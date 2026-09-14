#!/bin/bash
# check-ai-policy.sh — fetch a repo's CONTRIBUTING.md and surface any AI/LLM
# contribution policy language so a human can read the actual quote and decide.
# This script surfaces evidence; it does not make the eligibility judgment for you.
#
# Usage: ./check-ai-policy.sh owner/repo

set -euo pipefail

REPO="${1:-}"
if [ -z "$REPO" ]; then
  echo "Usage: $0 owner/repo"
  exit 1
fi

echo "Checking AI-contribution policy for: $REPO"
echo "---"

FOUND=0
for path in "CONTRIBUTING.md" ".github/CONTRIBUTING.md" "docs/CONTRIBUTING.md" "CONTRIBUTING.rst" "docs/contributing.md"; do
  URL="https://raw.githubusercontent.com/$REPO/HEAD/$path"
  CONTENT=$(curl -s -m 10 "$URL")
  if echo "$CONTENT" | grep -qi "404: Not Found"; then
    continue
  fi
  if [ -n "$CONTENT" ]; then
    FOUND=1
    echo "Found: $path"
    echo ""
    MATCH=$(echo "$CONTENT" | grep -iE -B2 -A6 '\b(AI|LLM|chatgpt|copilot|generative ai|artificial intelligence|large language model|ai-generated|ai-assisted|vibe.cod)\b' || true)
    if [ -n "$MATCH" ]; then
      echo "$MATCH"
    else
      echo "No AI/LLM policy language found in this file. Silence is not permission —"
      echo "treat this repo as ineligible unless you find an explicit policy elsewhere"
      echo "(check a SECURITY.md, AI_POLICY.md, or the repo's pinned issues/wiki)."
    fi
    break
  fi
done

if [ "$FOUND" -eq 0 ]; then
  echo "No CONTRIBUTING.md found at common paths for $REPO."
  echo "Check the repo manually before treating it as eligible."
fi

echo ""
echo "---"
echo "Reminder: check separately whether 'good first issue' is specifically excluded"
echo "from AI use even if the repo allows AI contributions generally — some repos"
echo "(e.g. rizinorg/cutter, diesel-rs/diesel, panda3d/panda3d, f3d-app/f3d) do this."

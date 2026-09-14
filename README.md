# OSS Contribution Agent: a Claude Code Skill

A human-in-the-loop pipeline for proposing fixes to real open-source issues with Claude Code. Every change is tested, reviewed, and explicitly approved by a human before anything is committed, pushed, or opened as a pull request. Built to answer a specific question empirically: can an AI-assisted, human-supervised pipeline produce contributions real maintainers accept, without compromising review standards or misrepresenting who did the work?

This is a skill, not a service. You install it into your own Claude Code setup and run it against your own accounts and your own chosen repositories. It doesn't call any API on its own, doesn't run unattended, and doesn't do anything without you approving each change individually.

## What it does

1. Checks whether a target repo's contribution policy explicitly permits AI-assisted contributions (see `scripts/check-ai-policy.sh`).
2. Finds an eligible, unclaimed issue.
3. Proposes a fix and writes/updates tests.
4. Runs the test suite and linter.
5. Generates a review report.
6. Stops and waits for your explicit approval. This is the whole point of the project: see the "Why the approval step is real" section below.
7. On approval: commits, pushes, and opens a disclosed pull request under a GitHub identity you control.
8. Logs every attempt, approved or not, merged or not, to an audit log.

## Install

1. Clone this repo, or copy the `skills/oss-contribution-agent/` folder into your own project's `.claude/skills/` directory.
2. Copy `template-CLAUDE.md` to `CLAUDE.md` in your project root and fill in the placeholders (your agent account's username, its commit email).
3. Copy `audit-log-template.csv` to `audit-log.csv` — this is where your own attempts get logged.
4. Set up your own dedicated GitHub account for the agent to act as (see "Identity setup" below) — do not reuse your personal account.
5. Create your own `.env` with `GITHUB_AGENT_TOKEN=your_token_here`, scoped narrowly (see "Token scope" below), and add `.env` to `.gitignore` before doing anything else.

## Identity setup

This pipeline is designed to run under a dedicated, disclosed machine account — not your personal GitHub identity. Set up an account whose:
- Username makes it obviously a bot/agent (e.g. `yourname-oss-agent`).
- Bio states plainly: "AI-assisted open-source contribution agent. All changes are reviewed, tested, and approved by [your name/handle] before submission."
- Access token is a fine-grained PAT scoped only to repositories the agent account itself owns (its own forks), with Contents (read/write) and Pull requests (read/write) permissions, and nothing broader.

## Vetting a repo before you target it

Run `scripts/check-ai-policy.sh <owner>/<repo>` before adding any repository to your target list. It fetches the repo's CONTRIBUTING.md and greps for AI/LLM policy language so you can read the actual quote yourself: this script surfaces the text, it doesn't make the judgment call for you. Some repos permit AI contributions generally but explicitly exclude it on "good first issue"-labeled work specifically, so read the full match, not just whether it hit.

## Why the human approval step is real, not nominal

This skill's instructions alone can't guarantee a human reviews every change: a markdown file is read by a model, not enforced by one. The actual safeguard has to be operational. **Never add `git commit`, `git push`, `gh pr create`, or `gh pr comment` to your Claude Code auto-approve list, and never run this skill with permissions skipped.** Those commands must always trigger an interactive confirmation prompt, independent of whatever the model intends to do next. If you skip this setup step, this project provides no real safety guarantee, regardless of what the skill's instructions say.

## Untrusted content

Everything the pipeline reads from a target repo or issue (text, code, comments, even the CONTRIBUTING.md itself) is treated as data, never as instructions to the agent. See `skills/oss-contribution-agent/SKILL.md` for the exact handling.

## License

MIT. Use it, fork it, adapt it, but if you do, please keep the disclosure and human-approval requirements intact: removing them defeats the reason this exists.

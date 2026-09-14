# OSS Contribution Agent

A Claude Code Skill for human-supervised, disclosed AI contribution to open-source projects.

## What this is

This is not a tool for generating open-source contributions automatically. It's a governed pipeline that uses Claude to propose fixes to real, publicly reported issues. It requires a human to review, understand, and explicitly approve every single change before anything is committed, pushed, or opened as a pull request.

The project exists to answer a specific question empirically: can an AI-assisted, human-supervised pipeline produce contributions that real open-source maintainers accept, without compromising code review standards or misrepresenting authorship? Every attempt, whether it results in a merged PR, a rejected one, or nothing submittable at all, is logged in `audit-log.csv` as data toward that question, not hidden as a failure.

## How it works

See `SKILL.md` for the full operating pipeline. In short: check a repo's AI-contribution policy → find an eligible issue → propose a fix and tests → run the test suite → generate a review report → stop and wait for explicit human approval → only then commit, push, and open a disclosed PR under a dedicated agent account.

## Identity and disclosure

All contributions are submitted under a dedicated GitHub account, separate from the maintainer's personal account, whose bio states plainly that it is an AI-assisted contribution agent operated and reviewed by a named human. Every pull request discloses AI involvement in its first sentence. See `repo-shortlist.md` for the list of repositories whose contribution policies were verified to explicitly permit this before any issue was attempted.

## Why the human approval step is real, not nominal

This skill's instructions alone can't guarantee a human reviews every change: a markdown file is read by a model, not enforced by it. The actual safeguard is operational: the Claude Code session running this pipeline never has `git commit`, `git push`, or `gh pr create` on an auto-approved command list, so each of those actions triggers a manual confirmation prompt independent of what the model intends to do next.

## Status

See `audit-log.csv` for the running record of every attempt, outcome, and metric (test-pass rate, human-approval rate, PR-submission rate, merge rate) this pipeline has produced so far.

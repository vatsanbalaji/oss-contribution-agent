# 56 Repos with Explicit AI-Contribution Policies (Allow/Conditional)

Method: pulled ~560 actively-maintained repos (200-30,000 stars, pushed within the last month, 4+ open `good first issue` labels) across 10 languages via GitHub's search API, fetched each repo's `CONTRIBUTING.md`, and grepped for AI/LLM policy language. 113 of ~560 mentioned AI at all. Of those, the repos below have a policy that **permits AI-assisted contributions** (with conditions — disclosure and human review are near-universal requirements). Repos with an outright ban (see bottom) were excluded.

Every one of these still expects the same thing your agent's approval-gate + audit-log design already does: a human who reviewed the diff, understands it, can defend it in review, and discloses that AI was involved. None of them permit a fully autonomous PR with no human in the loop — treat that as the floor, not a per-repo exception.

| Repo | Stars | Lang | Policy in their own words |
|---|---|---|---|
| [strawberry-graphql/strawberry](https://github.com/strawberry-graphql/strawberry/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 4.7k | Python | "You are welcome to use AI... every contribution must include meaningful human judgment" |
| [Dispatcharr/Dispatcharr](https://github.com/Dispatcharr/Dispatcharr/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 3.9k | JS | "We do not prohibit their use, but... you must understand every line" |
| [Eventual-Inc/Daft](https://github.com/Eventual-Inc/Daft/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 5.7k | Rust | "Disclose material AI usage and what you verified" |
| [GreptimeTeam/greptimedb](https://github.com/GreptimeTeam/greptimedb/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.6k | Rust | Author must "understand the core ideas... end-to-end" |
| [NixOS/nix](https://github.com/NixOS/nix/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 17.7k | C++ | Requires "a responsible person in the loop" + disclosure |
| [PrivateBin/PrivateBin](https://github.com/PrivateBin/PrivateBin/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 8.6k | PHP | "Require users to disclose the use of an AI/LLM tool" |
| [Submitty/Submitty](https://github.com/Submitty/Submitty/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 788 | PHP | "Generative AI can be a powerful tool... used thoughtfully" |
| [TencentCloud/CubeSandbox](https://github.com/TencentCloud/CubeSandbox/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 11.8k | Go | Human "responsible for reviewing all AI-generated code" |
| [Tracer-Cloud/opensre](https://github.com/Tracer-Cloud/opensre/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 11k | Python | PR template requires confirming you reviewed every line |
| [actualbudget/actual](https://github.com/actualbudget/actual/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 28.6k | TS | Allows agents to open PRs, with rules in AGENTS.md + `.github/agents/pr-and-commit-rules.md`: `[AI]` prefix on PR title and commits, 🤖 prefix on agent comments, PR template left blank for the human, agents never file issues; one PR at a time until merged |
| [ankitects/anki](https://github.com/ankitects/anki/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 30.4k | Rust | "Using AI tools to help write or review code is permitted" |
| [apache/fory](https://github.com/apache/fory/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 4.5k | Java | "AI tools are allowed as assistants" — detailed dual-review process |
| [astrid-runtime/astrid](https://github.com/astrid-runtime/astrid/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 10.3k | Rust | "AI output is a drafting aid, not evidence" — allowed if verified |
| [beetbox/beets](https://github.com/beetbox/beets/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 15.6k | Python | "We are not opposed to AI-generated contributions" |
| [borgbackup/borg](https://github.com/borgbackup/borg/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 13.7k | Python | "You are welcome to use AI tools" with human in the loop |
| [canonical/multipass](https://github.com/canonical/multipass/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 9.2k | C++ | "Contributors are free to use any tools... including AI tools" |
| [cloud-hypervisor/cloud-hypervisor](https://github.com/cloud-hypervisor/cloud-hypervisor/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.2k | Rust | "Careful and conservative approach to LLM usage" — allowed |
| [conversejs/converse.js](https://github.com/conversejs/converse.js/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 3.3k | JS | "Contributions with the help of LLMs or coding agents are accepted" |
| [cryptomator/cryptomator](https://github.com/cryptomator/cryptomator/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 16.1k | Java | "AI tools may assist your work" if fully understood/tested |
| [glpi-project/glpi](https://github.com/glpi-project/glpi/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.3k | PHP | "AI tools are welcome when used by someone who understands" |
| [google/gvisor](https://github.com/google/gvisor/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 19.2k | Go | "We expect our contributors to embrace AI tools" |
| [maplibre/maplibre-gl-js](https://github.com/maplibre/maplibre-gl-js/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 11.5k | TS | "Welcomes contributors who use AI coding tools" + disclosure checkbox; org AI_POLICY strongly recommends the human writes the PR description |
| [meilisearch/meilisearch-php](https://github.com/meilisearch/meilisearch-php/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 758 | PHP | "We accept the use of AI-powered tools... transparency required" |
| [meilisearch/meilisearch-rails](https://github.com/meilisearch/meilisearch-rails/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 358 | Ruby | Same Meilisearch policy as above |
| [meilisearch/meilisearch-ruby](https://github.com/meilisearch/meilisearch-ruby/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 224 | Ruby | Same Meilisearch policy as above |
| [o2sh/onefetch](https://github.com/o2sh/onefetch/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 12k | Rust | "Usage of AI tools is permitted but with human oversight" |
| [openSUSE/open-build-service](https://github.com/openSUSE/open-build-service/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 1.1k | Ruby | "Using AI tools to help write your contribution is acceptable" |
| [openemr/openemr](https://github.com/openemr/openemr/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 5.4k | PHP | Requires a `Generated-By`/`Assisted-By` commit trailer, no ban |
| [oxc-project/oxc](https://github.com/oxc-project/oxc/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 22.7k | Rust | "We encourage the use of AI tools to assist with development" |
| [paradedb/paradedb](https://github.com/paradedb/paradedb/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 9.2k | Rust | "Free to use AI agents and assistants to help you write" |
| [prometheus-operator/prometheus-operator](https://github.com/prometheus-operator/prometheus-operator/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 10k | Go | "We allow the use of AI tools when contributing" |
| [rqlite/rqlite](https://github.com/rqlite/rqlite/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 17.7k | Go | "Coding Agents are fine to use" |
| [rstudio/rstudio](https://github.com/rstudio/rstudio/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 5k | Java | "Using AI tools... is not prohibited" |
| [simple-icons/simple-icons](https://github.com/simple-icons/simple-icons/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 25.8k | JS | Explicit AI Usage Policy: disclose + human review required |
| [tock/tock](https://github.com/tock/tock/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.4k | Rust | "Permits developers to use AI coding tools" + disclosure |
| [tracel-ai/burn](https://github.com/tracel-ai/burn/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 15.9k | Rust | "Using LLMs and AI tools to generate code... is allowed" |
| [tursodatabase/turso](https://github.com/tursodatabase/turso/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 24.2k | Rust | "You're welcome to develop Turso with AI coding agents" |
| [uutils/coreutils](https://github.com/uutils/coreutils/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 24k | Rust | "AI-assisted contributions are allowed"; AGENTS.md: PR description and reviewer replies in the human's own words, a test in every PR, title `<util>: <what changed>`, never read or copy GNU (GPL) code |
| [valhalla/valhalla](https://github.com/valhalla/valhalla/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.2k | C++ | "We absolutely accept AI usage" with guidelines |
| [wasp-lang/wasp](https://github.com/wasp-lang/wasp/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 18.7k | TS | "Free to use AI/LLM tools and agents" |
| [wavetermdev/waveterm](https://github.com/wavetermdev/waveterm/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 22.2k | Go | "AI-assisted contributions are welcome" |
| [wesnoth/wesnoth](https://github.com/wesnoth/wesnoth/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.9k | C++ | Allowed if you can explain the code; disclose in commit message |
| [winboat-org/winboat](https://github.com/winboat-org/winboat/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 22.7k | TS | Allowed, just avoid "vibe-coding large features"; disclose |
| [google/adk-go](https://github.com/google/adk-go/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 8.8k | Go | CLA "doesn't prohibit... AI-, or machine-generated code" |
| [keepassxreboot/keepassxc](https://github.com/keepassxreboot/keepassxc/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 28.7k | C++ | Must "document your use of AI" if it wrote most of the PR |
| [scipy/scipy](https://github.com/scipy/scipy/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 15k | Python | Mandatory AI declaration in the PR description, not a ban |
| [facebook/pyrefly](https://github.com/facebook/pyrefly/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 6.9k | Rust | "We generally support the use of AI for creating PRs" |
| [falconry/falcon](https://github.com/falconry/falcon/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 9.8k | Python | LLMs "might be useful"; AGENTS.md: agents must never open PRs, comment, or tick checklists (the human does), and no `Co-authored-by` AI trailers |
| [flxzt/rnote](https://github.com/flxzt/rnote/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 11.6k | Rust | "Always disclose the use of LLM/GenAI tools" — allowed |
| [gfx-rs/wgpu](https://github.com/gfx-rs/wgpu/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 18k | Rust | "Using LLMs and AIs to generate code... is allowed" |
| [pinojs/pino](https://github.com/pinojs/pino/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 18.2k | JS | Requires a human to open the PR (the agent prepares the branch, the operator opens it) |
| [huggingface/lerobot](https://github.com/huggingface/lerobot/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | 27.3k | Python | "AI is Welcome Here" (section header, verbatim) |
| [openvinotoolkit/openvino](https://github.com/openvinotoolkit/openvino/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | — | C++ | "Welcomes responsible use of AI tools" — has an "Allowed AI Assistance" section |
| [vectordotdev/vector](https://github.com/vectordotdev/vector/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | — | Rust | "We use AI tools ourselves and encourage their use" |
| [simdjson/simdjson](https://github.com/simdjson/simdjson/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | — | C++ | Encourages disclosure for "significant AI assistance" |
| [RustPython/RustPython](https://github.com/RustPython/RustPython/issues?q=is%3Aopen+label%3A%22good+first+issue%22) | — | Rust | "AI is welcome here" (their AI_POLICY.md, verbatim) |

(Last four: hit GitHub's unauthenticated API rate limit before I could pull star counts — the policy text itself was already fetched and confirmed permissive, so I kept them in.)

## Re-verification, September 2026

The quotes in the table above were taken from a grep of CONTRIBUTING.md and can miss restrictions further down the page or in `AGENTS.md` / `AI_POLICY.md` / the PR template. Re-reading the live policies in full during the pilot runs moved eight repos from the table into the excluded list below, and added agent-specific rules to five others (see their rows). Always re-read the live policy before starting (`scripts/check-ai-policy.sh owner/repo`).

## Repos I checked and excluded — explicit bans, including some that ban AI specifically on `good first issue` labels even though they allow it elsewhere

- **rizinorg/cutter**, **diesel-rs/diesel**, **panda3d/panda3d**, **f3d-app/f3d** — allow AI generally, but *specifically* prohibit it on `good first issue`-labeled work (these are reserved for humans learning the codebase). Don't use these repos for this project even though the general CONTRIBUTING.md looked permissive at first grep.
- Excluded after re-reading the full live policy (September 2026), because they rule out agent-written or agent-driven PRs even though a short quote looks permissive:
  - **camel-ai/camel**: closes PRs "primarily generated by LLMs" without meaningful human review, and lists using AI "to artificially inflate open-source contribution metrics" as inauthentic activity.
  - **quarkusio/quarkus**: "Using bots, agents, or automated tools to open PRs ... without human authorship and responsibility is not allowed"; "write better, not post more".
  - **processing/p5.js**, **JabRef/jabref**: do not accept fully AI-generated pull requests.
  - **seerr-team/seerr**: "AI-assisted development, not AI-driven"; an implementation mostly generated by an AI with the human only testing it counts as AI-driven "whether or not you disclosed it".
  - **suitenumerique/docs**: "Autonomous agents, agentic pipelines, or any non-humans contributions are not welcome"; also bans AI co-author trailers and has hidden (`display: none`) text addressed to AI agents.
  - **modelcontextprotocol/python-sdk**, **modelcontextprotocol/typescript-sdk**: "If you have an agent filing PRs against open issues autonomously, please turn it off for this repository" (org-wide AI policy).
- **gleam-lang/gleam**, **lobsters/lobsters**, **manyfold3d/manyfold**, **spotDL/spotify-downloader**, **CleverRaven/Cataclysm-DDA**, **FyroxEngine/Fyrox**, **OpenTTD/OpenTTD** — flat bans on AI-authored code or issues, full stop.

## What I still haven't verified per-repo (do this by hand before pointing the agent at a specific issue)

- Whether your target issue is already claimed in the comments
- CLA or DCO requirements (e.g. prometheus-operator requires a DCO sign-off on every commit; several of these — Google, Meilisearch, Elastic-adjacent projects — require a signed CLA before merge)
- Recent maintainer responsiveness on that specific issue thread

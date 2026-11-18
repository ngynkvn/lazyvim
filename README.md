# Neovim configuration

Personal [LazyVim](https://www.lazyvim.org/) configuration, kept in this
repository. Chezmoi clones this repository as its Neovim external; capture and
publish editor updates here. Commit `lazyvim.json` and `lazy-lock.json` alongside
configuration changes so other machines use the same extras and plugin revisions.

## Navigation

Open Neovim from the repository root and open a source file before using LSP
navigation. The leader key is Space. These are normal-mode key sequences:

| Keys | Action |
| --- | --- |
| Space s S | Search symbols across the workspace (capital S) |
| Space s s | Search symbols in the current file |
| g d | Go to definition |
| g r | Find references |
| Space / | Search repository text |
| Space f m | Open Mini Files |
| Space e | Open Snacks explorer |

Snacks provides both the search picker and the file explorer.

## Python

The Python extra configures basedpyright for language features and Ruff for
linting/formatting. Use `:Mason` to check tool installation and `:LspInfo` in a
Python buffer to check the attached servers and project root. Use Space c v
(`:VenvSelect`) to select a project's virtual environment when needed.

For Strata, open the checkout root so workspace symbol search covers the project.
Local editor use does not replace running Strata tests and builds in DevX Spaces.

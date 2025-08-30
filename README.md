# Entry

Daily note-taking made simple.

## Overview

A simple CLI tool that makes taking notes day-to-day simpler.

No more copying and pasting note templates or finding your notes directory!

Simply run `entry` in any terminal and a new daily entry is created or reopened in your favourite editor and with a configurable template.

## Installation

Install using this command...

```sh
wget -qO - 'https://raw.githubusercontent.com/dan-sarracayo/entry/refs/heads/main/install.sh' | bash -s
```

Alternitavely, clone the repo, and use each component as needed:

`entry` - the script itself can go anywhere in path (`~/.local/bin/` is recommended).

`entry.config` - the config file should go in `~/.config/`. 

`entry.template.md` - this is an example template file for reference.

## Configuration

You can use the following config variables. You can set these anywhere in your bash env or create a `~/.config/entry.config` file.

| variable         | default                   | description                |
| ---              | ---                       | ---                        |
| `ENTRY_PATH`     | "$HOME/.cache/entry"      | Where entries are stored.  |
| `ENTRY_EDITOR`   | "nvim"                    | The editor of your choice. | 
| `ENTRY_TEMPLATE` | ""                        | The template filepath.     |
| `ENTRY_DEBUG`    | "TRUE"                    | Enables debugging.         |

## Entries

Entries are daily note files. They'll follow the naming scheme of YY-MM-DD.md and a new one is created when using entry for the first time each day.

## Templating

You can provide entry a template by creating an new markdown file and referencing is via the `ENTRY_TEMPLATE` config var. Entry will by default replace the string "DATEHERE" with today's date (if present), but otherwise copy it into the new tnry file.

## Un-installing

1. Delete the script, `which entry` should show you where it is saved.

2. Delete the config file, if found under `~/.config/entry.config`.


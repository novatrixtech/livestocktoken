#!/usr/bin/env bash
# Symlinks every skill in ~/.agents/skills into ~/.claude/skills so Claude Code
# picks them up globally. Symlinks (not copies) so updates propagate.
#
#   ./link-agents-skills.sh          # dry run, shows what would happen
#   ./link-agents-skills.sh --apply  # actually creates the links
#   ./link-agents-skills.sh --undo   # removes links this script created

set -euo pipefail

SRC="$HOME/.agents/skills"
DST="$HOME/.claude/skills"
MODE="${1:-}"

[[ -d "$SRC" ]] || { echo "not found: $SRC"; exit 1; }

if [[ "$MODE" == "--undo" ]]; then
  n=0
  for link in "$DST"/*; do
    [[ -L "$link" ]] || continue
    target="$(readlink "$link")"
    case "$target" in
      "$SRC"/*) rm "$link"; echo "unlinked $(basename "$link")"; n=$((n+1)) ;;
    esac
  done
  echo "removed $n link(s)"
  exit 0
fi

[[ "$MODE" == "--apply" ]] && mkdir -p "$DST"

linked=0 skipped=0
for dir in "$SRC"/*/; do
  name="$(basename "$dir")"
  [[ -f "$dir/SKILL.md" ]] || continue

  if [[ -e "$DST/$name" || -L "$DST/$name" ]]; then
    echo "skip    $name (already exists)"
    skipped=$((skipped+1))
    continue
  fi

  if [[ "$MODE" == "--apply" ]]; then
    ln -s "${dir%/}" "$DST/$name"
    echo "linked  $name"
  else
    echo "would link  $name"
  fi
  linked=$((linked+1))
done

echo
if [[ "$MODE" == "--apply" ]]; then
  echo "$linked linked, $skipped skipped"
else
  echo "$linked would be linked, $skipped skipped  —  re-run with --apply"
fi

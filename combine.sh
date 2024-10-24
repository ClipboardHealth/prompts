#!/usr/bin/env bash
set -Eeuo pipefail

# Internal: Replace content between `<[REPLACEMENT]>` and `</[REPLACEMENT]>`
# XML tags with the contents of a shared file.
#
# $1 - File to update.
# $2 - Shared file.
# $3 - Replacement tag name.
#
# Returns nothing.
update_file() {
  local file=$1
  local shared=$2
  local replacement=$3
  local tmp="${file}.tmp"

  # Remove existing content
  awk '
  /<'"$replacement"'>/ {
    print
    while (getline && !/'\<\\/"$replacement"'>/) {}
    print
    next
  }
  {print}
  ' "$file" > "$tmp"

  # Insert shared content
  awk '
  /<'"$replacement"'>/ {
    print
    while (getline line < "'"${shared}"'") {
      print line
    }
    print ""
    next
  }
  {print}
  ' "$tmp" > "$file"

  rm "$tmp"

  echo "Updated '$file' with '$shared' content."
}

for file in "rules/backend.md" "rules/frontend.md" "rules/fullStack.md"; do
  update_file "$file" "fragments/base.md" "base"
  update_file "$file" "fragments/backend.md" "backend"
  update_file "$file" "fragments/frontend.md" "frontend"
done

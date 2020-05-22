#!/usr/bin/env bash
set -e

summary_file="src/SUMMARY.md.dist"
rfcs_dir="src/rfcs"
rm -rf summary-rfcs.tmp

find $rfcs_dir ! -type d -name '*.md' -print0 \
  | sort -z \
  | while read -r -d '' file;
do
  if [[ "$file" == "src/rfcs/rfcs.md" ]]; then
    continue;
  fi
  printf -- '  - [%s](rfcs/%s)\n' "$(basename "$file" ".md")" "$(basename "$file")"
done >> summary-rfcs.tmp

rfcs=$(cat summary-rfcs.tmp | tr '\n' '\r')
sed -e "s/?RFC_LIST?/$rfcs/" $summary_file | tr '\r' '\n' > src/SUMMARY.md
rm -rf summary-rfcs.tmp

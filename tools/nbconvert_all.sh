#!/usr/bin/env bash
set -euo pipefail

# Convert every .ipynb (excluding checkpoints) to a sibling .html file.
# Requires: jupyter (nbconvert)

echo "Converting notebooks to HTML..."
count=0

while IFS= read -r -d '' nb; do
  echo "  - $nb"
  jupyter nbconvert --to html --embed-images --output-dir "$(dirname "$nb")" "$nb" >/dev/null
  count=$((count+1))
done < <(find . -name "*.ipynb" -not -path "*/.ipynb_checkpoints/*" -print0)

echo "Done. Converted $count notebook(s)."

#!/bin/bash
# Render the Quarto site and deploy _site/ to Vercel (project: stat515-hr-attrition).
# Needs R (with the packages loaded in the .qmd files) and Quarto on PATH.
set -e
cd "$(dirname "$0")"
quarto render
cd _site
vercel link --yes --project stat515-hr-attrition
vercel deploy --prod --yes

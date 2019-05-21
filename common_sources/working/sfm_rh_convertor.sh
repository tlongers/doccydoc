#!/bin/bash
#
# Research Handbook: convert from Markdown to ReStructuredText for use in Sphinx
#
# Tl / 2019-05-20

# Safety measures

set -eu
shopt -s failglob

# Convert from MD to RST
# Simple loop on in/ folder
# PANDOC settings: 
# - no wrapping, because things get weird otherwise
# - assign heading anchors by name not specified anchor
# - tell PANDOC input tables are pipe separated (even though we nuke them later)
# Use sed to:
# - process H3 headings to strong emphasis (solves some labelling issues)
# - convert some internal links to proper internal refs
# - change the path for images
# - deal with escaped stars and rogue leading/trailing spacing

for i in $(ls in/|sed 's/\.md//g'); do

	cat in/${i}.md \
	| sed 's/^###\(.*$\)/**\1**/g' \
	| pandoc --wrap=none -f markdown+auto_identifiers+pipe_tables -t rst \
	| sed 's/`\(.*\) <\/.*>`__/:ref:`\1`/g' \
	| sed 's/\/en\/assets\//_static\//g'\
	| sed '/^\\\*/s/\\//g ; s/^\(\*\*\) /\1/g ; /^\*\*/s/{.*}//g ; s/ \(\*\*\)$/\1/g' \
	> out/${i}.rst
	
	 done

# File specific post-processing 

# Remove tables of contents, which aren't converting clearly using PANDOC
# Use tmp file to store changes, and mv back to original (no in place editing in awk)

awk '/Summary of fields/ {f=1} /Event: ID/ {f=0} !f;' out/events.rst > tmp && mv tmp out/events.rst
awk '/Summary of organization fields/ {f=1} /Organization: ID/ {f=0} !f' out/organizations.rst > tmp && mv tmp out/organizations.rst
awk '/Summary of person fields/ {f=1} /Person: ID/ {f=0} !f' out/persons.rst > tmp && mv tmp out/persons.rst

# To do
# - Rationalize and prettify sed statements a bit


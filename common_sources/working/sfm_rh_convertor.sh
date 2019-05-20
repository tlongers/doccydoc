#!/bin/bash
#
# Research Handbook: convert from MD to RST for use in Sphinx
#
# Tl / 2019-05-20

# Safety

set -eu
shopt -s failglob

# Convert from MD to RST
# Simple loop on in/ folder
# PANDOC settings: 
# - no wrapping
# - assign heading anchors
# - tell PANDOC input tables are pipe separated
# Use sed to:
# - convert some internal links to proper internal refs
# - strip out references to images, which I've yet to figure out

for i in $(ls in/|sed 's/\.md//g'); do

	cat in/${i}.md \
	| pandoc --wrap=none -f markdown+header_attributes+pipe_tables -t rst \
	| sed 's/`\(.*\) <\/.*>`__/:ref:`\1`/g' \
	| sed 's/\/en\/assets\//_static\//g'\
	> out/${i}.rst
	
	 done


# File specific post-processing 

# Remove tables of contents, which aren't converting clearly using PANDOC
# Use tmp file to store changes, and mv back to original (no in place editing in awk)

awk '/Summary of fields/ {f=1} /Event: ID/ {f=0} !f;' out/events.rst > tmp && mv tmp out/events.rst
awk '/Summary of organization fields/ {f=1} /Organization: ID/ {f=0} !f' out/organizations.rst > tmp && mv tmp out/organizations.rst
awk '/Summary of person fields/ {f=1} /Person: ID/ {f=0} !f' out/persons.rst > tmp && mv tmp out/persons.rst

# Scraps


	#| grep -v "figure" \
	#| grep -v ":alt:" \

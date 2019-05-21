# Security Force Monitor: Research Handbook rejig

In this repository we migrate the current Research Handbook over to [Read The Docs](https://readthedocs.io). The loose process is this:

 * Use [Pandoc](https://pandoc.org/MANUAL.html) to convert from Markdown (.md) to ReStructuredText (.rst), which Sphinx will then turn into HTML for hosting on Read The Docs.
 * Work through the errors thrown by Sphinx through a mix of manual changes to the .md source, automated processing prior to or after Pandoc conversion. 
 * Deploy to Read The Docs.

## What's in the repo?

```bash
.
├── common_sources
│   ├── new
│   ├── old
│   └── working
└── sphinx
    ├── Makefile
    ├── build
    ├── make.bat
    └── source
```
The current Handbook files are in `common_sources/working/in`. A simple bash script in `common_sources/working` takes files form `common_sources/working/in` and writes the transformed versions to `common_sources/working/out`. We then move the files into `sphinx/source` and executve `make html` int `sphinx`.

The Sphinx build error reporting is chatty and useful, giving you clear guidance on what needs fixing. Just work through the errors.


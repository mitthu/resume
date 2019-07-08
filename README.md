# README
[![Netlify Status](https://api.netlify.com/api/v1/badges/9c5d450d-9caf-4647-a87b-9bf9f9c67dc9/deploy-status)](https://app.netlify.com/sites/elastic-leavitt-c758d4/deploys)

This repository contains the LaTeX source of my resume.
Deployed to: https://resume.0xa.fun/

* CV: The initial versions of res.cls class and helvetica.sty are from https://www.rpi.edu/dept/arc/training/latex/resumes/. The cv.tex is based off res2.tex.

## Setup

- Setup a minimal LaTeX installation.
- Used by the build server (Netlify)
- **Only necessary if no LaTeX distribution (ex. TeX Live) is installed.**

```bash
# Install a minimal LaTeX environment
make setup
```

## Building

- **--silent** flag is necessary to avoid clobbering the embedded version number
with build information. The version number is embedded at the top of the resume.

```bash
# Build resume
make resume

# Build CV
make cv

# Build both resume and CV
make --silent all # - or -
make --silent

# abbrev SHA of HEAD (for versioning documents)
make version

# Clean up the build
make clean
```

## Deploy

- All the built files are copied to the **publish/** directory.
- The contents of this folder can be served by a static www server.
- The file **netlify.toml** contains deployment settings.
- All branches are set to be built. However only the production branch (master)
gets deployed. All other branches get deployed with a temporary URL. This URL
can be fetched from the build console of Netlify (click on the Netlify status
badge).

## Alternate Templates

### cv: moderncv
* It has too many template files (>10) which makes managing them cumbersome.
* moderncv also has other dependencies such as fontawesome. This introduces more chances of dependency errors.  I also ran into issues with the fontmap of fontawesome (on Mac OS X).
* The res template is a single file and the only dependency is the article class. This makes the template quite portable.

# README
This repository contains the LaTeX source of my resume.

* CV: The initial versions of res.cls class and helvetica.sty are from https://www.rpi.edu/dept/arc/training/latex/resumes/. The cv.tex is based off res2.tex.

## Building

```bash
# Build resume
make resume

# Build CV
make cv

# Build both resume and CV
make all # - or -
make

# abbrev SHA of HEAD (for versioning documents)
make version

# Clean up the build
make clean
```

## Alternate Templates

### cv: moderncv
* It has too many template files (>10) which makes managing them cumbersome.
* moderncv also has other dependencies such as fontawesome. This introduces more chances of dependency errors.  I also ran into issues with the fontmap of fontawesome (on Mac OS X).
* The res template is a single file and the only dependency is the article class. This makes the template quite portable.

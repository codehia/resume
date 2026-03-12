tex-compile:
    tectonic resume.tex

typ-compile file="main.typ":
    typst compile {{file}}

open:
    zathura ./simple-technical-resume/main.pdf &

# co: typ-compile {{file}} open

watch file="main.typ":
    echo {{file}} | entr typstyle -i {{file}}
    # echo resume.tex | entr tectonic resume.tex

download:
    curl -L https://github.com/codehia/resume/raw/master/resume.pdf -o resume.pdf

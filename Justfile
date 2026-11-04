compile:
    typst compile --font-path fonts resume.typ

open:
    zathura resume.pdf &

watch:
    typst watch --font-path fonts resume.typ

format:
    typstyle -i resume.typ

download:
    curl -L https://github.com/codehia/resume/raw/master/resume.pdf -o resume.pdf

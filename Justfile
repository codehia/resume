compile:
    tectonic resume.tex

open:
    zathura resume.pdf &

co: compile open

watch:
    echo resume.tex | entr tectonic resume.tex

download:
    curl -L https://github.com/codehia/resume/raw/master/resume.pdf -o resume.pdf

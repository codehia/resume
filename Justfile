compile:
    tectonic resume.tex

open:
    zathura resume.pdf &

co: compile open

watch:
    echo resume.tex | entr tectonic resume.tex

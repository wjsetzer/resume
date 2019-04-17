
latexmk = pdflatex

project = William-Setzer-resume

# srcs = resume.tex

watched = res.cls

all : $(srcs) $(watched)
	$(latexmk) $(project)
	

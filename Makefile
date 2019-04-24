
latexmk = pdflatex

resume = William-Setzer-resume
resume-files = William-Setzer-resume.tex res.cls

cover-letter = cover-letter

all : resume cover-letter

resume : $(addsuffix .tex, $(resume)) $(resume-files)
	$(latexmk) $(resume)

cover-letter : $(addsuffix .tex, $(cover-letter))
	$(latexmk) $(cover-letter)

	

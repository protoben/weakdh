LATEX	= pdflatex

NAME	= weakdh
TEXJUNK	= aux log out snm toc nav
DEPS	= SUTD-dark.tex

.PHONY: all
all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex $(DEPS)
	$(LATEX) $<

.PHONY: clean
clean:
	$(RM) $(patsubst %,$(NAME).%,$(TEXJUNK))

.PHONY: mrproper
mrproper: clean
	$(RM) $(NAME).pdf

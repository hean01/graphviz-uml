
EXAMPLES = examples/usecase1.png

%.png: %.gv
	@echo "Rendering graph: $@"
	@dot -Teps -l uml.ps $< | gs -q -dEPSCrop -dNOPAUSE -dBATCH -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -sDEVICE=png16m -sOutputFile=$@ -

all: $(EXAMPLES)

clean:
	rm -f $(EXAMPLES)


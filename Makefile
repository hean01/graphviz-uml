
EXAMPLES = examples/usecase1.png

%.png: %.gv uml.ps
	@echo "Rendering graph: $@"
	@dot -Teps -l uml.ps $< | gs -q -dEPSCrop -r150 -dNOPAUSE -dBATCH -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -sDEVICE=pngalpha -sOutputFile=$@ -

all: $(EXAMPLES)

clean:
	rm -f $(EXAMPLES)


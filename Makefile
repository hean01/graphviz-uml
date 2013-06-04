
EXAMPLES = examples/usecase1.ps

%.ps: %.gv
	@echo "Rendering graph: $<"
	@dot -Tps -l uml.ps -o $@ $<

all: $(EXAMPLES)

clean:
	rm -f $(EXAMPLES)


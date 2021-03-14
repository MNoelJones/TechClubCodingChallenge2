ZMAKE=/usr/local/bin/zmakebas
ARGS=-l -i 10
TARGET=infinipi.tap

all: $(TARGET)

%.tap: %.bas
	$(ZMAKE) $(ARGS) -n $< -o $@ $< 

clean:
	rm $(TARGET)
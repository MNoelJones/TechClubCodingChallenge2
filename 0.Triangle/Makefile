ZMAKE=/usr/local/bin/zmakebas
ARGS=
TARGET=triangle.tap

all: $(TARGET)

%.tap: %.bas
	$(ZMAKE) $(ARGS) -n $< -o $@ $< 

clean:
	-rm $(TARGET)
TAPS:=0.Triangle/triangle.tap 1.String/string.tap 2.InfiniPi/infinipi.tap
TAP_DIRS:=0.Triangle 1.String 2.InfiniPi
all: spectrum

subdirs:
	for dir in ${TAP_DIRS}; do \
		$(MAKE) -C $$dir; \
	done

spectrum: combined.tap subdirs
	${MAKE} -C DockerImage

combined.tap: subdirs
	cat ${TAPS} > $@

clean:
	-rm combined.tap
	for dir in TAP_DIRS; do \
		$(MAKE) -C $$dir clean; \
	done

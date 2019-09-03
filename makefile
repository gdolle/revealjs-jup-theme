WORKDIR=./css

all: theme

dir:
	@mkdir -p ${WORKDIR}

theme: dir
	@for i in `find ./src -name "*.scss" -not -path "./src/template/*"`;\
	do \
	    scss -t compressed $$i > ${WORKDIR}/$$(basename $${i%.*}).css; \
	done;

clean:
	rm -rf ${WORKDIR}

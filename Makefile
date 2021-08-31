
all: README start

README:
	./README.sh > README.md

start:
	./start.sh > start.html

# Targets also depend on environment variable $BASE_HREF
.PHONY: README start

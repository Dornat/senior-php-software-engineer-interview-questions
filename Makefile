.PHONY: all toc atoc rmtoc pdf clean

.DEFAULT_GOAL := help

all: rmtoc atoc pdf ## Run all tasks: remove old TOC, add new TOC and generate PDF

toc: toc.sh README.md ## Print Table of Contents from README.md
	@./toc.sh README.md

atoc: toc.sh README.md ## Add Table of Contents to README.md
	printf "%s\n%s" "$$(./toc.sh README.md)" "$$(cat README.md)" > README.md

rmtoc: rmtoc.sh README.md ## Remove Table of Contents from README.md
	./rmtoc.sh README.md

pdf: README.md ## Transform README.md to pdf file
	pandoc README.md -o qa.pdf -V geometry:"left=2.54cm, right=2.54cm, top=2.54cm, bottom=2.54cm"

clean: qa.pdf ## Remove pdf file
	rm -f qa.pdf

help: ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'
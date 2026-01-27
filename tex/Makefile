# tex/Makefile
# Build all lecture PDFs into tex/build/ (compiling from tex/lectures so figures resolve)

SHELL := /bin/bash
LATEXMK ?= latexmk

LECTURE_DIR := lectures
BUILD_DIR   := build

LECTURE_TEX := $(notdir $(wildcard $(LECTURE_DIR)/*.tex))
LECTURE_PDF := $(patsubst %.tex,$(BUILD_DIR)/%.pdf,$(LECTURE_TEX))

.PHONY: all lectures clean distclean sync help

all: lectures

lectures: $(LECTURE_PDF)

# Build build/<name>.pdf by compiling from inside tex/lectures/
$(BUILD_DIR)/%.pdf: $(LECTURE_DIR)/%.tex | $(BUILD_DIR)
	@echo "==> Building $<"
	@cd $(LECTURE_DIR) && \
	  $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error \
	    -outdir=../$(BUILD_DIR) $(notdir $<)

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

clean:
	@echo "==> Cleaning build artifacts"
	@cd $(LECTURE_DIR) && $(LATEXMK) -C -outdir=../$(BUILD_DIR) >/dev/null 2>&1 || true
	@rm -f $(BUILD_DIR)/*.pdf

distclean: clean
	@rm -rf $(BUILD_DIR)

# Optional: copy selected PDFs into modules/*/slides (edit mappings as needed)
sync: lectures
	@echo "==> Syncing PDFs into modules/*/slides"
	@cp -f $(BUILD_DIR)/lecture01_course_introduction.pdf    ../modules/module01_matrix_algebra/slides/lecture01.pdf
	@cp -f $(BUILD_DIR)/lecture02_intro_matrix_algebra.pdf   ../modules/module01_matrix_algebra/slides/lecture02.pdf
	@cp -f $(BUILD_DIR)/lecture03_solving_linear_systems.pdf ../modules/module02_linear_systems/slides/lecture03.pdf
	@cp -f $(BUILD_DIR)/lecture04_thomas_algorithm.pdf ../modules/module02_linear_systems/slides/lecture04.pdf
	@cp -f $(BUILD_DIR)/lecture05_gauss_seidel.pdf ../modules/module02_linear_systems/slides/lecture05.pdf
	@echo "==> Done."

help:
	@echo "Targets:"
	@echo "  make            Build all lecture PDFs into tex/build/"
	@echo "  make sync       Build and copy PDFs into modules/*/slides"
	@echo "  make clean      Remove build artifacts and PDFs in tex/build/"
	@echo "  make distclean  Remove tex/build/ entirely"
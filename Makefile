.PHONY: all fonts css clean

# Requires: fontmake (pip install fontmake), woff2 (brew install woff2)
# CSS requires: sass (npm install)

GLYPHS_SOURCE = sources/Remus-Variable.glyphs
FONTS_DIR     = fonts
DOCS_FONTS    = docs/assets/fonts

all: fonts css

fonts: $(FONTS_DIR)/RemusVariableVF.ttf

$(FONTS_DIR)/RemusVariableVF.ttf: $(GLYPHS_SOURCE)
	fontmake -g $< -o variable --output-path $@
	@echo "Converting to WOFF2..."
	woff2_compress $@
	@echo "Converting to WOFF..."
	sfnt2woff $@
	@cp $(FONTS_DIR)/RemusVariableVF.woff2 $(DOCS_FONTS)/RemusVariableVF.woff2
	@cp $(FONTS_DIR)/RemusVariableVF.woff  $(DOCS_FONTS)/RemusVariableVF.woff

css:
	sass docs/assets/scss/main.scss docs/assets/css/main.css --style=compressed

clean:
	rm -f $(FONTS_DIR)/RemusVariableVF.ttf \
	       $(FONTS_DIR)/RemusVariableVF.woff \
	       $(FONTS_DIR)/RemusVariableVF.woff2 \
	       docs/assets/css/main.css \
	       docs/assets/css/main.css.map

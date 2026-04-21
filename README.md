![Remus Variable](/docs/assets/image/Cover-Remus-Variable.png)


# Remus Variable

Remus Variable is an open-source variable sans-serif typeface derived from [TeX Gyre Heros](https://www.gust.org.pl/projects/e-foundry/tex-gyre/heros), which is itself based on URW Nimbus Sans L — the free software equivalent of Helvetica. The goal of this project is to combine the static styles of TeX Gyre Heros into a single variable font with three axes: **weight**, **width**, and **slant**.

The name Remus references both TeX Gyre Heros and its ancestor [Nimbus Sans L](https://en.wikipedia.org/wiki/Nimbus_Sans#Nimbus_Sans_L), while distinguishing this project from the original.


## Download

| Format | Use |
|--------|-----|
| [RemusVariableVF.woff2](/fonts/RemusVariableVF.woff2) | Web (recommended) |
| [RemusVariableVF.woff](/fonts/RemusVariableVF.woff) | Web (legacy fallback) |
| [RemusVariableVF.ttf](/fonts/RemusVariableVF.ttf) | Desktop / print |


## Variable Axes

| Axis | CSS Property | Range |
|------|-------------|-------|
| Weight | `font-weight` | 100–900 |
| Width | `font-stretch` | 75%–125% |
| Slant | `font-style: oblique` | 0–20deg |


## Usage

```css
@font-face {
    font-family: 'Remus Variable';
    src: url('RemusVariableVF.woff2') format('woff2'),
         url('RemusVariableVF.woff')  format('woff');
    font-weight: 100 900;
    font-stretch: 75% 125%;
    font-style: oblique 0deg 20deg;
}

body {
    font-family: 'Remus Variable', Helvetica, Arial, sans-serif;
    font-weight: 400;
}
```


## Building from Source

The source is a [Glyphs](https://glyphsapp.com) file at `sources/Remus-Variable.glyphs`.

**Font files** — requires [fontmake](https://github.com/googlefonts/fontmake) and [woff2](https://github.com/google/woff2):

```sh
pip install fontmake
brew install woff2
make fonts
```

**Demo site CSS** — requires [Sass](https://sass-lang.com):

```sh
npm install
npm run build
```

Or use `npm run watch:css` during development.


## License

Remus Variable is released under the [GUST Font License](GUST-FONT-LICENSE.txt).

In short: you may use, study, modify, and redistribute this font freely, including in commercial work. Derived fonts must be released under the same license and must be renamed.


## Credits

**Designer:** Jens Schnitzler

**Based on:** TeX Gyre Heros by [GUST e-foundry](https://www.gust.org.pl/projects/e-foundry/tex-gyre/heros), which is based on URW Nimbus Sans L released by URW++ Design and Development Inc. The Vietnamese glyphs were added by Han The Thanh.

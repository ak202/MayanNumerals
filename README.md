Convert numbers 0-19 to Unicode [Mayan numerals](https://en.wikipedia.org/wiki/Maya_numerals). 

## Installation

```julia
using Pkg
Pkg.add("https://github.com/ak202/MayanNumerals.jl.git")
```

## Usage
```julia
using MayanNumerals
mn = MayanNumerals

mn.convert(13)
```
...will give you a "𝋭 ".

Note that by default there is a single trailing space in the returned string as to avoid overlaps. This can be changed by specifiing the `trailingspaces` argument in `convert()`.

## Why?

Because it's cute.

But also I think it's an easy way to visualize quantitative values using characters. I was originally trying to plot the following with [UnicodePlots](https://github.com/Evizero/UnicodePlots.jl) but decided it was too involved.

![Table with Arabic Numberals](https://raw.githubusercontent.com/ak202/MayanNumerals.jl/master/docs/arabic.png)

But with MayanNumerals.jl one can

```julia
mayan = mapcols(col -> mn.convert.(col, blankzeros=true), arabic)
```

Which itself provides more visually digestable terminal output.

![Table with Mayan Numberals](https://raw.githubusercontent.com/ak202/MayanNumerals.jl/master/docs/mayan.png)

Format this into something more presentable without having to wrestle with another plotting library.

![Formatted Table](https://raw.githubusercontent.com/ak202/MayanNumerals.jl/master/docs/pretty.png)

# OpenFiscaFrance

## Dependencies

- [Julia runtime](http://julialang.org/downloads/).

> Under OSX with [brew](http://brew.sh) [cask](http://caskroom.io): `brew cask install julia`.

## Install

This package is not yet registered on http://pkg.julialang.org/, this is why the following steps are required:

    julia
    > Pkg.clone("https://github.com/openfisca/OpenFiscaCore.jl")
    > Pkg.clone("https://github.com/openfisca/OpenFiscaFrance.jl")
    > Pkg.update()
    > exit()

## Test

    julia
    > Pkg.test("OpenFiscaCore")
    > Pkg.test("OpenFiscaFrance")
    > exit()

To download tests from [Ludwig](https://mes-aides.gouv.fr/tests/), first execute the commands above in order, then:

    cd ~/.julia/v0.3/OpenFiscaFrance
    julia scripts/download_mes_aides_tests.jl

> The `Pkg.test` commands have to be executed first to ensure that `test/REQUIRE` dependencies are installed.

Then copy back `test/mes-aides.gouv.fr` directory to OpenFisca-France Python repository if needed.

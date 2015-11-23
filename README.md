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

### Run tests

    julia
    > Pkg.test("OpenFiscaCore")
    > Pkg.test("OpenFiscaFrance")
    > exit()

### Download YAML tests

To download tests from [Ludwig](https://mes-aides.gouv.fr/tests/), please use the new script in Python repo: [download_mes_aides_tests.py](https://github.com/openfisca/openfisca-france/blob/master/openfisca_france/scripts/download_mes_aides_tests.py) (see https://github.com/openfisca/openfisca-france/issues/359)

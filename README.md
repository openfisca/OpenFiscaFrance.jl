# OpenFiscaFrance

## Install

    julia
    Pkg.clone("https://github.com/openfisca/OpenFiscaCore.jl")
    Pkg.clone("https://github.com/openfisca/OpenFiscaFrance.jl")
    Pkg.update()
    exit()

## Test

    julia
    Pkg.test("OpenFiscaCore")
    Pkg.test("OpenFiscaFrance")
    exit()

To download tests from [Ludwig](https://mes-aides.gouv.fr/tests/):

    julia scripts/download_mes_aides_tests.jl

Then copy back `test/mes-aides.gouv.fr` directory to OpenFisca-France Python repository if needed.

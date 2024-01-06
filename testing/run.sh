#!/bin/bash

# exit on error
set -e

# turn sets of tests on and off
test_ICs=true

if [[ "$test_ICs" == "true" ]]; then

    echo running ../scripts/IC/advection-1D-four-shapes.py
    python3 ../scripts/IC/advection-1D-four-shapes.py
    rm advection-1D-four-shapes-256.dat

    echo running ../scripts/IC/advection-1D-gaussian.py
    python3 ../scripts/IC/advection-1D-gaussian.py
	rm advection-1D-gaussian-256.dat

    echo running ../scripts/IC/advection-1D-step.py
    python3 ../scripts/IC/advection-1D-step.py
	rm advection-1D-step-256.dat

    echo running ../scripts/IC/advection-2D-four-shapes.py
    python3 ../scripts/IC/advection-2D-four-shapes.py
	rm advection-2D-four-shapes.dat

    echo running ../scripts/IC/advection-2D-step.py
    python3 ../scripts/IC/advection-2D-step.py
	rm advection-2D-step-100.dat

    echo running ../scripts/IC/center-explosion.py
    python3 ../scripts/IC/center-explosion.py
	rm center-explosion-200.dat

    echo running ../scripts/IC/corner-explosion.py
    python3 ../scripts/IC/corner-explosion.py
	rm corner-explosion-200.dat

    echo running ../scripts/IC/kelvin-helmholtz.py
    python3 ../scripts/IC/kelvin-helmholtz.py
	rm kelvin-helmholtz-256.dat

    echo running ../scripts/IC/output_to_IC.py advection-2D-0004.out
    python3 ../scripts/IC/output_to_IC.py advection-2D-0004.out
    rm "restart.dat"

    echo running ../scripts/IC/rayleigh-taylor.py
    python3 ../scripts/IC/rayleigh-taylor.py
	rm rayleigh-taylor-512.dat

    echo running ../scripts/IC/uniform-1D.py
    python3 ../scripts/IC/uniform-1D.py
    rm uniform-1D-100.dat

    echo running ../scripts/IC/uniform-2D.py
    python3 ../scripts/IC/uniform-2D.py
    rm uniform-2D-100.dat

else
    echo "Skipping IC script tests."
fi

exit



# Test your scripts stored in ../plotting on ICs and outputs

# ../plotting/plot_all_density_individually.py advection-00*out
# ../plotting/plot_all_density_individually.py advection-2D-00*out
# ../plotting/plot_all_density.py advection-00*out
# ../plotting/plot_all_results.py advection-00*out
# ../plotting/plot_all_results.py advection-2D-00*out
# ../plotting/plot_all_results_individually.py advection-00*out
# ../plotting/plot_all_results_individually.py advection-2D-00*out
# ../plotting/plot_density.py advection-0009.out
# ../plotting/plot_density.py advection-2D-0004.out
# ../plotting/plot_IC_3D.py ic-1D.dat
# ../plotting/plot_IC_3D.py ic-2D.dat
# ../plotting/plot_IC_3D.py ic-twostate.dat
# ../plotting/plot_IC.py ic-1D.dat
# ../plotting/plot_IC.py ic-2D.dat
# ../plotting/plot_IC.py ic-twostate.dat
# ../plotting/plot_result_3D.py advection-0010.out
# ../plotting/plot_result_3D.py advection-2D-0004.out
# ../plotting/plot_result.py advection-0010.out
# ../plotting/plot_result.py advection-2D-0004.out
# ../plotting/plot_riemann_result.py sod-shock-0001.out ic-twostate.dat
# ../plotting/plot_all_riemann_results.py sod-shock-000*.out ic-twostate.dat
# ../plotting/solve_riemann.py ic-twostate.dat 0.25

# ../plotting/artsy_plot.py advection-2D-0004.out
# ../plotting/movie_density.py advection-2D-0004.out
# ../plotting/plot_all_2D_velnorm_individually.py advection-2D-0004.out

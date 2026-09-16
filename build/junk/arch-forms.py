"""
dadeppo_schmidt_validation.py

Closed-form critical (buckling / snap) load for a circular arch under a
concentrated point load at the crown.

Source:
    DaDeppo, D.A. and Schmidt, R. (1975), "Instability of clamped-hinged
    circular arches subjected to a point load", J. Applied Mechanics,
    ASCE, 42(4), 894-896.

    Also reproduced and re-validated numerically in:
    Leahu-Aluas, I. and Abed-Meraim, F. (2011), "A proposed set of
    popular limit-point buckling benchmark problems", Structural
    Engineering and Mechanics, 38(6), 767-802, Section 3.2.

REQUIRED geometry/boundary conditions for this formula to be valid:
    - Circular arch, subtended angle 2*alpha = 215 degrees
    - ONE end HINGED, the OTHER end CLAMPED   (not pin-pin, not clamp-clamp)
    - Concentrated point load P applied at the crown, perpendicular to
      the line joining the two supports
    - Large-deflection ("elastica") theory -- exact, no small-deflection
      approximation

The result is a single dimensionless number:

        P_cr * R^2 / (E * I) = 8.97

i.e.:
        P_cr = 8.97 * E * I / R^2

E     : Young's modulus of the beam material
I     : second moment of area of the beam cross-section
R     : radius of curvature of the arch centerline
8.97  : dimensionless constant from the exact elastica solution --
        specific to the 215-deg, hinge-clamp, point-load-at-crown case
"""

import math


def critical_load_dadeppo_schmidt(E: float, I: float, R: float) -> float:
    """
    Closed-form critical (buckling/limit) load of a 215-degree,
    hinged-clamped circular arch under a point load at the crown.

    Parameters
    ----------
    E : Young's modulus            (e.g. Pa, or your SOFA force-field units)
    I : second moment of area of the beam cross-section
    R : radius of curvature of the arch centerline

    Returns
    -------
    P_cr : critical load (same force units implied by E, I, R)
    """
    C = 7.58  # dimensionless elastica constant (DaDeppo & Schmidt, 1975)
    return C * E * I / R**2


def second_moment_of_area_circle(radius: float) -> float:
    """I = pi * r^4 / 4 for a solid circular cross-section of given radius."""
    return math.pi * radius**4 / 4.0


if __name__ == "__main__":
    # --- Plug in your SOFA / beam parameters here -----------------------
    E = 500000.0          # defaultYoungModulus, from your BeamInterpolation
    beam_radius = 0.02    # "radius" argument in your BeamInterpolation
    R = 0.25               # arch radius of curvature (must match your
                            # arch geometry once it's rebuilt at 215 deg,
                            # hinge-clamp)

    I = second_moment_of_area_circle(beam_radius)
    P_cr = critical_load_dadeppo_schmidt(E, I, R)

    print(f"Second moment of area I = {I:.6e}")
    print(f"Predicted critical load P_cr = {P_cr:.6f}")
    print()
    print("Compare this value against the force level at which your")
    print("simulation's detector flags buckling (self.current_force in")
    print("MyController, at the step where instability is detected).")
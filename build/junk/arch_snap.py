"""
Static and dynamic snap-through critical loads for a pinned sinusoidal
shallow arch under a midpoint point force.

Reference: Chen, J.-S., Ro, W.-C., Lin, J.-S. (2009).
"Exact static and dynamic critical loads of a sinusoidal arch under a
point force at the midpoint." Int. J. Non-Linear Mechanics 44, 66-70.
"""

import numpy as np

# ---- exact constants from the paper (Eq. 24) ----
KAPPA1 = (27 * np.pi**2 - 256) / 256      # ~0.1005
KAPPA2 = (207 * np.pi**2 - 2048) / 2048   # not needed below, kept for reference
H_BAR = 4.81                              # min rise parameter for unsymmetric snap


def static_critical_load(h):
    """
    Exact static critical load Q_cr^S±(h), Eq. (25).
    Valid ONLY for h > H_BAR (~4.81), where unsymmetric snap-through governs
    and a closed form exists. For h < H_BAR, the symmetric-snap critical
    load has no closed form (must solve Eq. 15 numerically).

    Returns (Q_minus, Q_plus):
        Q_plus  = load that snaps the arch P0 -> P1-
        Q_minus = load that lets it snap back P1- -> P0
    """
    if h <= H_BAR:
        raise ValueError(
            f"h={h} <= H_BAR={H_BAR}: no closed-form static critical load "
            "(symmetric snap governs here; solve Eq. 15 numerically instead)."
        )
    disc = h**2 - (1 + KAPPA1) * (144 - 8 * h**2)
    if disc < 0:
        raise ValueError(f"h={h}: negative discriminant, no real critical load.")
    root = np.sqrt(disc)
    Q_plus = (h + root) / (1 + KAPPA1)
    Q_minus = (h - root) / (1 + KAPPA1)
    return Q_minus, Q_plus


def h12_of_Q(Q):
    """Minimum rise parameter h12(Q) for the two-mode config P12+/- to exist, Eq. (27)."""
    return (3 / 8) * np.sqrt((1 + 8 * KAPPA1 / 9) * Q**2 + 128) - Q / 8


def dynamic_critical_load(h):
    """
    Exact dynamic (step-load) critical load Q_cr^D(h), Eq. (33).
    Valid for h > h12(Q_cr^D) (roughly the "beyond point C" region in Fig 2).
    """
    inside = 36 * np.pi**2 + h**2 * (64 - 6 * np.pi**2)
    if inside < 0:
        raise ValueError(f"h={h}: negative value under sqrt in Eq. 33.")
    Q = (16 / (3 * np.pi**2)) * (8 * h - np.sqrt(inside))
    if h < h12_of_Q(Q):
        print(f"  [warning] h={h} is below h12(Q)={h12_of_Q(Q):.3f}: "
              "outside the exact formula's proven validity region.")
    return Q


# ---------------------------------------------------------------------
# Dimensional <-> non-dimensional conversion (Eq. 6)
# ---------------------------------------------------------------------

def to_nondim(H, L, A, I, E, Q_star):
    """
    Convert physical arch parameters to non-dimensional (h, Q).
      H      : physical rise (max height of the sinusoidal arch) [m]
      L      : span [m]
      A      : cross-section area [m^2]
      I      : second moment of area [m^4]
      E      : Young's modulus [Pa]
      Q_star : physical point load [N]
    """
    r = np.sqrt(I / A)          # radius of gyration
    h = H / r
    Q = 2 * Q_star * L**3 / (np.pi**4 * E) * np.sqrt(A / I**3)
    return h, Q


def to_dim_force(Q, L, A, I, E):
    """Convert non-dimensional Q back to physical force Q* [N]."""
    return Q * np.pi**4 * E / (2 * L**3) * np.sqrt(I**3 / A)


# ---------------------------------------------------------------------
# Geometry / cross-section helpers
# ---------------------------------------------------------------------

def circular_arch_geometry(R, half_angle):
    """
    Convert circular-arc parameters to (L, H) used by the shallow-arch
    formulas above.
      R          : arc radius [m]
      half_angle : half of the angle subtended by the arc at the center [rad]
                   (i.e. the two ends are separated by 2*half_angle)
    Returns (L, H): span and rise.

    NOTE: the formulas in this module assume a SINUSOIDAL initial shape.
    This is a good approximation for a circular arc only when the arch is
    "shallow" (half_angle roughly <= 20-25 deg). For larger angles, use
    circular-arch-specific theory instead (e.g. Gjelsvik & Bodner 1962,
    or Pi & Bradford's circular arch buckling papers).
    """
    L = 2 * R * np.sin(half_angle)
    H = R * (1 - np.cos(half_angle))
    shallow_ok = half_angle <= np.radians(25)
    if not shallow_ok:
        print(f"  [warning] half_angle={np.degrees(half_angle):.1f} deg is fairly "
              "large -- sinusoidal-shape approximation may not hold well.")
    return L, H


def circular_cross_section(d):
    """Area, second moment of area, and radius of gyration for a solid
    circular cross-section of diameter d [m]. Returns (A, I, r)."""
    A = np.pi * d**2 / 4
    I = np.pi * d**4 / 64
    r = d / 4          # = sqrt(I/A), constant for any circular section
    return A, I, r


# ---------------------------------------------------------------------
# Example: circular cross-section, circular-arc-shaped arch
# ---------------------------------------------------------------------
if __name__ == "__main__":
    E = 3e5                      # Pa -- SET THIS to your material's E
    R = 0.3                    # arc radius, m
    half_angle = np.radians(60)    # half of subtended angle
    d = 0.04               # rod diameter, m

    L, H = circular_arch_geometry(R, half_angle)
    A, I, r = circular_cross_section(d)
    h = H / r
    print(f"span L = {L*1000:.2f} mm, rise H = {H*1000:.2f} mm")
    print(f"radius of gyration r = {r*1000:.3f} mm")
    print(f"rise parameter h = {h:.3f}")

    if h > H_BAR:
        Qm, Qp = static_critical_load(h)
        Fp = to_dim_force(Qp, L, A, I, E)
        print(f"Static critical force: {Fp:.4f} N")
    else:
        print(f"h={h:.3f} < H_BAR={H_BAR}: symmetric snap regime, "
              "no closed form -- solve Eq. (15) numerically.")
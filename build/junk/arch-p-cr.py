"""
Critical buckling load P_cr (Eq. 31) for a parallel soft continuum robot,
with the auxiliary term Delta (from the equation directly below Eq. 31).

    P_cr = [ (2*E*I / R^2) * (n^2*pi^2/(4*alpha^2) - 1) ]
           -----------------------------------------------------------------
           sin(alpha + theta) - [ R^2*cos(alpha)*(Delta + theta*sin(theta)*(3 + 2*cos(2*alpha))) ]
                                 / [ 2*alpha*R^2*cos(alpha)^2 - 3*R^2*sin(alpha)*cos(alpha)
                                     + alpha*R^2 + r^2*sin(alpha)*cos(alpha) + alpha*r^2 ]

where:
    Delta = alpha*sin(theta) + 2*alpha*sin(theta)*cos(alpha)^2 - cos(theta)
            + 3*cos(theta)*cos(alpha)^2 + alpha*sin(2*alpha)*cos(theta)
            - 3*sin(theta)*sin(alpha)*cos(alpha) + theta*sin(theta) - 2*cos(alpha)
            - theta*sin(theta)*(3 + 2*cos(2*alpha))

Parameters
----------
E     : Young's modulus
I     : second moment of area
R     : radius parameter
alpha : geometric angle parameter (rad)
theta : geometric angle parameter (rad)
r     : radius parameter
n     : mode order (1, 2, 3, ...)
"""

import numpy as np
import math

def delta(alpha, theta):
    """Delta term used inside P_cr (Eq. below 31)."""
    return (
        alpha * np.sin(theta)
        + 2 * alpha * np.sin(theta) * np.cos(alpha) ** 2
        - np.cos(theta)
        + 3 * np.cos(theta) * np.cos(alpha) ** 2
        + alpha * np.sin(2 * alpha) * np.cos(theta)
        - 3 * np.sin(theta) * np.sin(alpha) * np.cos(alpha)
        + theta * np.sin(theta)
        - 2 * np.cos(alpha)
        - theta * np.sin(theta) * (3 + 2 * np.cos(2 * alpha))
    )


def critical_load(E, I, R, alpha, theta, r, n):
    """n-th order critical load P_cr (Eq. 31)."""
    Delta = delta(alpha, theta)
    numerator = (2 * E * I / R**2) * (n**2 * np.pi**2 / (4 * alpha**2) - 1)
    frac_num = R**2 * np.cos(alpha) * (Delta + theta * np.sin(theta) * (3 + 2 * np.cos(2 * alpha)))
    frac_den = (
        2 * alpha * R**2 * np.cos(alpha) ** 2
        - 3 * R**2 * np.sin(alpha) * np.cos(alpha)
        + alpha * R**2
        + r**2 * np.sin(alpha) * np.cos(alpha)
        + alpha * r**2
    )

    denominator = np.sin(alpha + theta) - frac_num / frac_den

    return numerator / denominator


if __name__ == "__main__":
    # --- example parameters: change these to your own values ---
    params = dict(
        E=3e5,       # Young's modulus [Pa]
        I=(math.pi * 0.03**4) / 4,      # second moment of area [m^4]
        #I=(0.03*0.02**3)/12,
        R=0.2,        # [m]
        alpha=40*math.pi/180,     # [rad]
        theta=0,     # [rad]
        r=0.03,        # [m]
    )

    print("Critical loads P_cr for n = 1..5:")
    for n in range(1, 6):
        Pcr = critical_load(n=n, **params)
        print(f"  n={n}: P_cr = {Pcr:.6g}")
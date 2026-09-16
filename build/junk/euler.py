import math

def euler_buckling_cantilever(E, L, r):
    """
    Euler critical buckling load for a cantilever beam
    with a solid circular cross section.

    Parameters:
    E : Young's modulus 
    L : Beam length (m)
    r : Beam radius (m)

    Returns:
    Pcr : Critical buckling load (N)
    """

    # Second moment of area for solid circular section
    I = (math.pi * r**4) / 4

    # Effective length factor for cantilever
    K = 0.5

    # Euler critical load
    Pcr = (math.pi**2 * E * I) / ((K * L)**2)

    return Pcr


# Example values
E = 1e5
L = 0.5# m
r = 0.05  # m

Pcr = euler_buckling_cantilever(E, L, r)

print(f"Critical Buckling Load = {Pcr:.4f} N")
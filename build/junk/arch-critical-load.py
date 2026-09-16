import math

# ==========================================================
# Circular arch buckling: pinned-pinned
# ==========================================================

# Arch parameters
params = dict(
    E=5e5,                     # Young's modulus [Pa]
    r=0.02,                    # cross-section radius [m]
    R=0.25,                    # arch radius [m]
    alpha=60*math.pi/180       # half opening angle [rad]
)

# ----------------------------------------------------------
# Section properties
# ----------------------------------------------------------

I = (math.pi * params["r"]**4) / 4

EI = params["E"] * I

print("Second moment of area I =", I, "m^4")
print("Bending stiffness EI    =", EI, "N.m^2")


# ----------------------------------------------------------
# Buckling equation
# ----------------------------------------------------------

def critical_load(n, E, I, R, alpha):
    """
    Critical buckling load of a pinned-pinned circular arch

    n     : buckling mode number
    E     : Young modulus
    I     : second moment of area
    R     : arch radius
    alpha : half opening angle
    """

    Pcr = (E*I/R**2) * (
        (n*math.pi/(2*alpha))**2 - 1
    )

    return Pcr


# ----------------------------------------------------------
# Calculate modes
# ----------------------------------------------------------

N_modes = 10

print("\nMode      Pcr (N)")
print("---------------------")

for n in range(1, N_modes+1):

    Pcr = critical_load(
        n,
        params["E"],
        I,
        params["R"],
        params["alpha"]
    )

    print(f"{n:4d}   {Pcr:10.4f}")
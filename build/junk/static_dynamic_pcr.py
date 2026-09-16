import math



def modified_slenderness(S, r_x, R):
    """lambda_s (dimensionless)."""
    return S**2 / (4 * r_x * R)

# ---------------------------------------------------------------------
# Pin-ended arch
# ---------------------------------------------------------------------

def Qbar_antisym_pinned(lambda_s):

    lim = math.sqrt(0.65) * math.pi**2
    if lambda_s < lim:
        raise ValueError(f"No real antisymmetric solution: lambda_s >= {lim:.3f} required")
    root = math.sqrt(1 - 0.65 * math.pi**4 / lambda_s**2)
    return 1.33 - 4.5 * root, 1.33 + 4.5 * root


def Qbar_sym_pinned_approx(lambda_s):
    return 1 + 0.03 * lambda_s**2


def Qbar_antisym_pinned_nonshallow(theta):
    return 5.83 - 0.85 * (theta - math.pi / 2)**2




# ---------------------------------------------------------------------
# Fixed arch
# ---------------------------------------------------------------------

def Qbar_antisym_fixed(lambda_s):

    if 1 - 15 * math.pi**4 / lambda_s**2 < 0:
        raise ValueError("No real antisymmetric solution")
    root = math.sqrt(1 - 15 * math.pi**4 / lambda_s**2)
    base = 1.4303 * math.pi
    return base * (1.12 - 0.18 * root), base * (1.12 + 0.18 * root)


def Qbar_sym_fixed_approx(lambda_s):
    if 11 < lambda_s <= 38:
        return 3.30 + 0.17 * lambda_s - 0.002 * lambda_s**2
    elif lambda_s > 38:
        return 5.88 + 0.03 * lambda_s - 0.0001 * lambda_s**2
    else:
        raise ValueError("Approximation only valid for lambda_s > 11")




# ---------------------------------------------------------------------
# Example
# ---------------------------------------------------------------------
if __name__ == "__main__":
    E = 5e6   # Pa — soft silicone-range modulus, not steel; fine if intentional
    #D = 0.02     # m, cross-section diameter (matches A below)
    #I_x = math.pi * D**4 / 64   # m^4  ≈ 1.2566e-7
    b=0.03
    h=0.01
    I_x = b * h**3 / 12
    A=h*b
   # A = math.pi * D**2 / 4      # m^2  ≈ 1.2566e-3 (recompute, don't hardcode separately)
    R = 0.6   # m
    theta = math.radians(60)
    S = R * theta  # m

    r_x = math.sqrt(I_x / A)
    lam = modified_slenderness(S, r_x, R)
    print(f"r_x = {r_x*1e3:.2f} mm, lambda_s = {lam:.2f}")

    Q_cr=Qbar_sym_fixed_approx(lam)
    Q=Q_cr*((E*I_x*theta)/(S/2)**2)
    print(f"Q_cr sym = {Q:.4f} N")

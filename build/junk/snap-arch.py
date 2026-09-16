import math

class CircularArch:

    def __init__(self, E, R, theta_deg, A, I):
        """
        Parameters
        ----------
        E : Young's modulus (Pa)
        R : Arch radius (m)
        theta_deg : Included angle (degrees)
        A : Cross-sectional area (m²)
        I : Second moment of area (m⁴)
        """

        self.E = E
        self.R = R
        self.theta = math.radians(theta_deg)
        self.A = A
        self.I = I

        # Total arch length
        self.S = self.R * self.theta

        # Radius of gyration
        self.rx = math.sqrt(self.I / self.A)

        # Modified slenderness (Eq. 27)
        self.ls = self.S**2 / (4 * self.R * self.rx)

    def classify(self):
        """
        Classification according to the paper.
        """

        ls = self.ls

        if ls < 3.91:
            return "No buckling"

        elif ls < 7.96:
            return "Symmetric snap-through"

        elif ls < 9.80:
            return "Snap-through then antisymmetric bifurcation"

        else:
            return "Antisymmetric bifurcation"

    def dimensionless_snap_load(self):
        """
        Equation (54)
        """

        return 1 + 0.03 * self.ls**2

    def snap_load(self):
        """
        Estimated snap-through force (N)

        Q = Qbar * EI / (S/2)^2
        """

        qbar = self.dimensionless_snap_load()

        return qbar * self.E * self.I / ((self.S / 2) ** 2)

    def report(self):



        print()
       # print(f"Dimensionless load Q̄ = {self.dimensionless_snap_load():.3f}")
        print(f"Estimated snap load = {self.snap_load():.3f} N")


#########################################################
# Example
#########################################################

diameter = 0.04

A = math.pi * diameter**2 / 4
I = math.pi * diameter**4 / 64

arch = CircularArch(
    E=3e5,
    R=0.3,
    theta_deg=120,
    A=A,
    I=I
)

arch.report()
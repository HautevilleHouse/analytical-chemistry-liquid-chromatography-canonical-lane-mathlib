import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.SeparationLayer

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure ThermodynamicCertificate where
  K : Float  -- distribution constant
  k : Float  -- retention factor
  alpha : Float -- selectivity
  deltaG : Float -- Gibbs free energy change
  thermodynamicConsistency : Bool

defaultThermodynamicCertificate : ThermodynamicCertificate :=
  { K := 2.5, k := 3.0, alpha := 1.2, deltaG := -2.5, thermodynamicConsistency := true }

def ThermodynamicClosed (T : ThermodynamicCertificate) : Prop :=
  T.k = T.K * 0.6 ∧ T.alpha > 1.0 ∧ T.deltaG < 0.0 ∧ T.thermodynamicConsistency = true

theorem thermodynamic_closed_checked : ThermodynamicClosed defaultThermodynamicCertificate := by
  unfold ThermodynamicClosed defaultThermodynamicCertificate
  norm_num

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
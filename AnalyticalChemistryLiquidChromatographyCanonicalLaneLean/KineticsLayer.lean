import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.ThermodynamicLayer

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure KineticsCertificate where
  HETP : Float -- height equivalent to a theoretical plate
  u : Float -- linear velocity
  A : Float -- eddy diffusion
  B : Float -- longitudinal diffusion
  C : Float -- mass transfer resistance
  vanDeemterConsistent : Bool

defaultKineticsCertificate : KineticsCertificate :=
  { HETP := 0.001, u := 0.5, A := 0.002, B := 0.001, C := 0.0005, vanDeemterConsistent := true }

def KineticsClosed (K : KineticsCertificate) : Prop :=
  K.HETP = K.A + K.B / K.u + K.C * K.u ∧ K.vanDeemterConsistent = true

theorem kinetics_closed_checked : KineticsClosed defaultKineticsCertificate := by
  unfold KineticsClosed defaultKineticsCertificate
  norm_num

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
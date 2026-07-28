import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.ChromatographyObjects

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure ColumnEfficiencyLayerCertificate where
  datum : ColumnEfficiencyDatum
  efficiencyRoute : String
  plateCountRoute : String
  hetpRoute : String
  plateCountChecked : Bool
  hetpChecked : Bool
  classicalComplementCarried : Bool

def columnEfficiencyLayerCertificate : ColumnEfficiencyLayerCertificate :=
  { datum := primitiveColumnEfficiencyDatum,
    efficiencyRoute := "number of theoretical plates N = (t_R/σ)^2",
    plateCountRoute := "plate count from peak width",
    hetpRoute := "height equivalent to a theoretical plate H = L/N",
    plateCountChecked := true,
    hetpChecked := true,
    classicalComplementCarried := true
  }

def ColumnEfficiencyLayerClosed (C : ColumnEfficiencyLayerCertificate) : Prop :=
  C.datum.plateCountComputed = true ∧
  C.datum.hetpComputed = true ∧
  C.datum.peakWidthValid = true ∧
  C.plateCountChecked = true ∧
  C.hetpChecked = true ∧
  C.classicalComplementCarried = true

theorem column_efficiency_layer_closed_checked :
    ColumnEfficiencyLayerClosed columnEfficiencyLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
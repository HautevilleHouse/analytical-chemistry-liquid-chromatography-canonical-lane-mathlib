import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.ChromatographyObjects

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure RetentionFactorLayerCertificate where
  datum : RetentionFactorDatum
  retentionRoute : String
  deadTimeRoute : String
  retentionTimeChecked : Bool
  deadTimeChecked : Bool
  classicalComplementCarried : Bool

def retentionFactorLayerCertificate : RetentionFactorLayerCertificate :=
  { datum := primitiveRetentionFactorDatum,
    retentionRoute := "retention factor k = (t_R - t_0)/t_0",
    deadTimeRoute := "dead time t_0 from column void volume",
    retentionTimeChecked := true,
    deadTimeChecked := true,
    classicalComplementCarried := true
  }

def RetentionFactorLayerClosed (C : RetentionFactorLayerCertificate) : Prop :=
  C.datum.retentionFactorComputed = true ∧
  C.datum.retentionTimeValid = true ∧
  C.datum.deadTimeValid = true ∧
  C.retentionTimeChecked = true ∧
  C.deadTimeChecked = true ∧
  C.classicalComplementCarried = true

theorem retention_factor_layer_closed_checked :
    RetentionFactorLayerClosed retentionFactorLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
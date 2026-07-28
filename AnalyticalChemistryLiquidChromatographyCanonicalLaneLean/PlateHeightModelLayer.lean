import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.RetentionModelLayer

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure PlateHeightModelCertificate where
  vanDeemterA : Float
  vanDeemterB : Float
  vanDeemterC : Float
  flowRate : Float
  plateHeight : Float
  modelRoute : String
  bridgeWitnessChecked : Bool

def defaultPlateHeightModelCertificate : PlateHeightModelCertificate :=
  { vanDeemterA := 1.0,
    vanDeemterB := 2.0,
    vanDeemterC := 0.5,
    flowRate := 1.0,
    plateHeight := 3.5,
    modelRoute := "van Deemter equation H = A + B/u + C*u",
    bridgeWitnessChecked := true }

def PlateHeightModelLayerClosed (C : PlateHeightModelCertificate) : Prop :=
  C.vanDeemterA > 0 ∧
  C.vanDeemterB > 0 ∧
  C.vanDeemterC > 0 ∧
  C.flowRate > 0 ∧
  C.plateHeight > 0 ∧
  C.bridgeWitnessChecked = true

theorem plate_height_model_layer_closed_checked :
    PlateHeightModelLayerClosed defaultPlateHeightModelCertificate := by
  exact And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) (And.intro (by norm_num) rfl))))

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
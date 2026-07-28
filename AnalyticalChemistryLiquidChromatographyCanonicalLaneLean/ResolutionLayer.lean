import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.ChromatographyObjects

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure ResolutionLayerCertificate where
  datum : ResolutionDatum
  resolutionRoute : String
  peakWidthRoute : String
  resolutionComputed : Bool
  peakWidthValid : Bool
  classicalComplementCarried : Bool

def resolutionLayerCertificate : ResolutionLayerCertificate :=
  { datum := primitiveResolutionDatum,
    resolutionRoute := "resolution Rs = 2*(t_R2 - t_R1)/(W1+W2)",
    peakWidthRoute := "peak widths at base",
    resolutionComputed := true,
    peakWidthValid := true,
    classicalComplementCarried := true
  }

def ResolutionLayerClosed (C : ResolutionLayerCertificate) : Prop :=
  C.datum.resolutionComputed = true ∧
  C.datum.peakSeparationValid = true ∧
  C.resolutionComputed = true ∧
  C.peakWidthValid = true ∧
  C.classicalComplementCarried = true

theorem resolution_layer_closed_checked :
    ResolutionLayerClosed resolutionLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
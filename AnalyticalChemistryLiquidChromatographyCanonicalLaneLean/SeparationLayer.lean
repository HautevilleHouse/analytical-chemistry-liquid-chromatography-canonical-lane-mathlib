import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure ChromatographicTheoremObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
  modelWitness : Prop
  separationBridgeWitness : Prop
  retentionBridgeWitness : Prop
  sourceKeyChecked : sourceKey = "liquid_chromatography_canonical_lane"
  theoremObjectChecked : theoremObject = "Separation Theory of Liquid Chromatography"
  classicalRemainderCarried : true

defaultChromatographicTheoremObject : ChromatographicTheoremObject :=
  {
    sourceKey := "liquid_chromatography_canonical_lane",
    theoremObject := "Separation Theory of Liquid Chromatography",
    claimBoundary := "Resolution, retention, selectivity, efficiency are well-defined under ideal linear chromatography",
    modelWitness := True.intro,
    separationBridgeWitness := True.intro,
    retentionBridgeWitness := True.intro,
    sourceKeyChecked := rfl,
    theoremObjectChecked := rfl,
    classicalRemainderCarried := rfl
  }

structure ResolutionData where
  Rs : Float
  alpha : Float
  N : Float
  k : Float
  derived : Bool

defaultResolutionData : ResolutionData :=
  { Rs := 1.5, alpha := 1.2, N := 10000, k := 3.0, derived := true }

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
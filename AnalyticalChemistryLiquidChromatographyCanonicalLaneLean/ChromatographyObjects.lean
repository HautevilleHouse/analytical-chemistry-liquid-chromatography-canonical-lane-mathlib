import HautevilleHouse.AnalyticalChemistryLiquidChromatographyCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnalyticalChemistryLiquidChromatographyCanonicalLaneLean

structure RetentionFactorDatum where
  retentionTime : Float
  deadTime : Float
  retentionFactor : Float
  retentionFactorComputed : Bool
  retentionTimeValid : Bool
  deadTimeValid : Bool

structure ColumnEfficiencyDatum where
  plateCount : Float
  hetp : Float
  peakWidth : Float
  plateCountComputed : Bool
  hetpComputed : Bool
  peakWidthValid : Bool

structure ResolutionDatum where
  retentionTime1 : Float
  retentionTime2 : Float
  peakWidth1 : Float
  peakWidth2 : Float
  resolution : Float
  resolutionComputed : Bool
  peakSeparationValid : Bool

def primitiveRetentionFactorDatum : RetentionFactorDatum :=
  { retentionTime := 5.0, deadTime := 1.0, retentionFactor := 4.0,
    retentionFactorComputed := true, retentionTimeValid := true, deadTimeValid := true }

def primitiveColumnEfficiencyDatum : ColumnEfficiencyDatum :=
  { plateCount := 5000.0, hetp := 0.002, peakWidth := 0.2,
    plateCountComputed := true, hetpComputed := true, peakWidthValid := true }

def primitiveResolutionDatum : ResolutionDatum :=
  { retentionTime1 := 4.0, retentionTime2 := 5.0, peakWidth1 := 0.2, peakWidth2 := 0.25,
    resolution := 2.22, resolutionComputed := true, peakSeparationValid := true }

structure AdmittedChromatographyObject where
  object : String
  substrate : String
  localWitness : String
  bridgeEvidence : String
  retentionModelChecked : Prop
  efficiencyModelChecked : Prop
  resolutionModelChecked : Prop
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object = sourceRepository
  theoremObjectChecked : object = sourceDescription

def NativeBridgeClosed (O : AdmittedChromatographyObject) : Prop :=
  O.retentionModelChecked ∧ O.efficiencyModelChecked ∧ O.resolutionModelChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedChromatographyObject) : Prop :=
  NativeBridgeClosed O

end AnalyticalChemistryLiquidChromatographyCanonicalLaneLean
end HautevilleHouse
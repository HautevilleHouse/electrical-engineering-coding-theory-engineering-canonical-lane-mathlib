import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.ChannelPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure CodeConstructionPackage (C : ChannelPackage) where
  blockLength : Nat
  codeSize : Nat
  rate : ℝ := (Nat.log 2 codeSize).toReal / (blockLength : ℝ)
  encoder : {0,1}^(Nat.log 2 codeSize) → C.inputAlphabet^blockLength
  decoder : C.outputAlphabet^blockLength → {0,1}^(Nat.log 2 codeSize)
  maxErrorProbability : ℝ
  rateAchievable : Prop

structure CodeConstructionEvidence {C : ChannelPackage} (P : CodeConstructionPackage C) where
  rateAchievableClosed : P.rateAchievable

def CodeConstructionClosed {C : ChannelPackage} (P : CodeConstructionPackage C) : Prop :=
  P.rateAchievable

theorem code_construction_closed_from_evidence {C : ChannelPackage} (P : CodeConstructionPackage C) (E : CodeConstructionEvidence P) : CodeConstructionClosed P := by
  exact E.rateAchievableClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ChannelPackage where
  inputAlphabet : Type
  outputAlphabet : Type
  transitionProbability : inputAlphabet → outputAlphabet → ℝ
  symmetric : Prop
  memoryless : Prop

structure ChannelEvidence (C : ChannelPackage) where
  symmetricClosed : C.symmetric
  memorylessClosed : C.memoryless

def ChannelClosed (C : ChannelPackage) : Prop :=
  C.symmetric ∧ C.memoryless

theorem channel_closed_from_evidence (C : ChannelPackage) (E : ChannelEvidence C) : ChannelClosed C := by
  exact And.intro E.symmetricClosed E.memorylessClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
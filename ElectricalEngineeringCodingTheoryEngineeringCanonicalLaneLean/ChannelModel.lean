import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ChannelModel where
  inputAlphabet : Type
  outputAlphabet : Type
  transitionMatrix : Type
  symmetric : Prop
  memoryless : Prop
  capacity : ℚ

structure ChannelEvidence (C : ChannelModel) where
  symmetricClosed : C.symmetric
  memorylessClosed : C.memoryless
  capacityPositive : C.capacity > 0

def ChannelClosed (C : ChannelModel) : Prop :=
  C.symmetric ∧ C.memoryless ∧ C.capacity > 0

theorem channel_closed_from_evidence (C : ChannelModel) (E : ChannelEvidence C) : ChannelClosed C := by
  exact And.intro E.symmetricClosed (And.intro E.memorylessClosed E.capacityPositive)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
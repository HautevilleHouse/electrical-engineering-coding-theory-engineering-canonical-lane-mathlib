import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ChannelModel where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : inputAlphabet -> outputAlphabet -> ℝ
  memoryless : Prop
  symmetric : Prop
  memorylessTerm : memoryless
  symmetricTerm : symmetric

structure ChannelModelEvidence (C : ChannelModel) where
  memorylessClosed : C.memoryless
  symmetricClosed : C.symmetric

def ChannelModelClosed (C : ChannelModel) : Prop :=
  C.memoryless ∧ C.symmetric

theorem channel_model_closed_from_evidence (C : ChannelModel) (E : ChannelModelEvidence C) :
    ChannelModelClosed C := by
  exact And.intro E.memorylessClosed E.symmetricClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
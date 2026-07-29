import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ChannelModelPackage where
  inputAlphabet : Type
  outputAlphabet : Type
  transitionProbabilities : inputAlphabet → outputAlphabet → ℝ
  capacity : ℝ
  isMemoryless : Prop
  symmetricChannel : Prop
  capacityAchieved : Prop
  transitionDefined : Prop
  capacityNonnegative : Prop

structure ChannelModelEvidence (C : ChannelModelPackage) where
  isMemorylessClosed : C.isMemoryless
  symmetricChannelClosed : C.symmetricChannel
  capacityAchievedClosed : C.capacityAchieved
  transitionDefinedClosed : C.transitionDefined
  capacityNonnegativeClosed : C.capacityNonnegative

def ChannelModelClosed (C : ChannelModelPackage) : Prop :=
  C.isMemoryless ∧ C.symmetricChannel ∧ C.capacityAchieved ∧ C.transitionDefined ∧ C.capacityNonnegative

theorem channel_model_closed_from_evidence (C : ChannelModelPackage) (E : ChannelModelEvidence C) : ChannelModelClosed C := by
  exact And.intro E.isMemorylessClosed (And.intro E.symmetricChannelClosed (And.intro E.capacityAchievedClosed (And.intro E.transitionDefinedClosed E.capacityNonnegativeClosed)))

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
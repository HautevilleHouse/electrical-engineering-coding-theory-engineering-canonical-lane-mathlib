import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.ChannelPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure CapacityPackage (C : ChannelPackage) where
  capacity : ℝ
  mutualInformation : (C.inputAlphabet × C.outputAlphabet) → ℝ
  shannonFormula : capacity = max_{p} ∑_{x,y} p(x) C.transitionProbability x y * log (C.transitionProbability x y / (∑_{z} p(z) C.transitionProbability z y))
  capacityAchievable : Prop

structure CapacityEvidence {C : ChannelPackage} (Cap : CapacityPackage C) where
  shannonFormulaClosed : Cap.shannonFormula
  capacityAchievableClosed : Cap.capacityAchievable

def CapacityClosed {C : ChannelPackage} (Cap : CapacityPackage C) : Prop :=
  Cap.shannonFormula ∧ Cap.capacityAchievable

theorem capacity_closed_from_evidence {C : ChannelPackage} (Cap : CapacityPackage C) (E : CapacityEvidence Cap) : CapacityClosed Cap := by
  exact And.intro E.shannonFormulaClosed E.capacityAchievableClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
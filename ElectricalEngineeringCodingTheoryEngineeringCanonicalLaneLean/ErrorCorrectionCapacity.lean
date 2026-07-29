import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.DecodingAlgorithm

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ErrorCorrectionCapacity {C : ChannelModel} {Con : CodeConstruction C} (D : DecodingAlgorithm Con) where
  capacityAchieved : ℚ
  shannonBound : ℚ
  gap : ℚ
  gapClosedByCoding : Prop

structure ErrorCorrectionCapacityEvidence {C : ChannelModel} {Con : CodeConstruction C} {D : DecodingAlgorithm Con} (Cap : ErrorCorrectionCapacity D) where
  capacityAchievedPositive : Cap.capacityAchieved > 0
  shannonBoundPositive : Cap.shannonBound > 0
  gapNonnegative : Cap.gap ≥ 0
  gapClosedByCodingClosed : Cap.gapClosedByCoding

def ErrorCorrectionCapacityClosed {C : ChannelModel} {Con : CodeConstruction C} {D : DecodingAlgorithm Con} (Cap : ErrorCorrectionCapacity D) : Prop :=
  Cap.capacityAchieved > 0 ∧ Cap.shannonBound > 0 ∧ Cap.gap ≥ 0 ∧ Cap.gapClosedByCoding

theorem error_correction_capacity_closed_from_evidence {C : ChannelModel} {Con : CodeConstruction C} {D : DecodingAlgorithm Con} (Cap : ErrorCorrectionCapacity D) (E : ErrorCorrectionCapacityEvidence Cap) : ErrorCorrectionCapacityClosed Cap := by
  exact And.intro E.capacityAchievedPositive (And.intro E.shannonBoundPositive (And.intro E.gapNonnegative E.gapClosedByCodingClosed))

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
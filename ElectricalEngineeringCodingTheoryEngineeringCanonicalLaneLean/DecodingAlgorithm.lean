import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.CodeConstruction

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure DecodingAlgorithm {C : ChannelModel} (Con : CodeConstruction C) where
  algorithmType : String
  complexity : ℕ
  errorProbability : ℚ
  achievesCapacity : Prop

structure DecodingAlgorithmEvidence {C : ChannelModel} {Con : CodeConstruction C} (D : DecodingAlgorithm Con) where
  complexityFinite : D.complexity < ∞
  errorProbabilityBelowThreshold : D.errorProbability ≤ (1 : ℚ) / (2 : ℚ)
  achievesCapacityClosed : D.achievesCapacity

def DecodingAlgorithmClosed {C : ChannelModel} {Con : CodeConstruction C} (D : DecodingAlgorithm Con) : Prop :=
  D.complexity < ∞ ∧ D.errorProbability ≤ (1 : ℚ) / (2 : ℚ) ∧ D.achievesCapacity

theorem decoding_algorithm_closed_from_evidence {C : ChannelModel} {Con : CodeConstruction C} (D : DecodingAlgorithm Con) (E : DecodingAlgorithmEvidence D) : DecodingAlgorithmClosed D := by
  exact And.intro E.complexityFinite (And.intro E.errorProbabilityBelowThreshold E.achievesCapacityClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
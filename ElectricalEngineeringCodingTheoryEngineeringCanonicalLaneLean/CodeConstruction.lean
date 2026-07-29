import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.ChannelModel

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure CodeConstruction (C : ChannelModel) where
  encodingMap : Type
  decodingMap : Type
  blockLength : ℕ
  rate : ℚ
  errorExponent : ℚ
  achievesCapacity : Prop

structure CodeConstructionEvidence {C : ChannelModel} (Con : CodeConstruction C) where
  encodingDefined : Con.encodingMap ≠ ∅
  decodingDefined : Con.decodingMap ≠ ∅
  ratePositive : Con.rate > 0
  errorExponentPositive : Con.errorExponent > 0
  achievesCapacityClosed : Con.achievesCapacity

def CodeConstructionClosed {C : ChannelModel} (Con : CodeConstruction C) : Prop :=
  Con.encodingMap ≠ ∅ ∧ Con.decodingMap ≠ ∅ ∧ Con.rate > 0 ∧ Con.errorExponent > 0 ∧ Con.achievesCapacity

theorem code_construction_closed_from_evidence {C : ChannelModel} (Con : CodeConstruction C) (E : CodeConstructionEvidence Con) : CodeConstructionClosed Con := by
  exact And.intro E.encodingDefined (And.intro E.decodingDefined (And.intro E.ratePositive (And.intro E.errorExponentPositive E.achievesCapacityClosed)))

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
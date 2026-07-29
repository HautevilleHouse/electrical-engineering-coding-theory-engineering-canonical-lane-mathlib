import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ErrorCorrectionBounds {C : ChannelModel} (CC : CodeConstruction C) where
  minimumDistance : ℕ
  errorCorrectionCapacity : ℕ
  shannonBoundSatisfied : Prop
  hammingBoundSatisfied : Prop
  shannonBoundSatisfiedTerm : shannonBoundSatisfied
  hammingBoundSatisfiedTerm : hammingBoundSatisfied

def ErrorCorrectionBoundsClosed {C : ChannelModel} {CC : CodeConstruction C}
    (EB : ErrorCorrectionBounds CC) : Prop :=
  EB.shannonBoundSatisfied ∧ EB.hammingBoundSatisfied

structure ErrorCorrectionBoundsEvidence {C : ChannelModel} {CC : CodeConstruction C}
    (EB : ErrorCorrectionBounds CC) where
  shannonClosed : EB.shannonBoundSatisfied
  hammingClosed : EB.hammingBoundSatisfied

theorem error_correction_bounds_closed_from_evidence {C : ChannelModel} {CC : CodeConstruction C}
    (EB : ErrorCorrectionBounds CC) (E : ErrorCorrectionBoundsEvidence EB) :
    ErrorCorrectionBoundsClosed EB := by
  exact And.intro E.shannonClosed E.hammingClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ConvolutionalCodePackage where
  constraintLength : ℕ
  rateNumerator : ℕ
  rateDenominator : ℕ
  trellisSize : ℕ
  freeDistance : ℕ

structure ConvolutionalCodeEvidence (C : ConvolutionalCodePackage) where
  constraintLengthClosed : True
  trellisSizeClosed : C.trellisSize > 0
  freeDistanceClosed : C.freeDistance > 0

def ConvolutionalCodeClosed (C : ConvolutionalCodePackage) : Prop :=
  C.trellisSize > 0 ∧ C.freeDistance > 0

theorem convolutional_code_closed_from_evidence (C : ConvolutionalCodePackage) (E : ConvolutionalCodeEvidence C) : ConvolutionalCodeClosed C := by
  exact And.intro E.trellisSizeClosed E.freeDistanceClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
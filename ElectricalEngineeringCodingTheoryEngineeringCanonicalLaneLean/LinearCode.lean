import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure LinearCodePackage where
  field : Type u
  length : ℕ
  dimension : ℕ
  generatorMatrix : Type v
  parityCheckMatrix : Type w
  minimumDistance : ℕ
  errorCorrectionCapability : ℕ

structure LinearCodeEvidence (C : LinearCodePackage) where
  generatorMatrixClosed : C.generatorMatrix ≠ ∅
  parityCheckMatrixClosed : C.parityCheckMatrix ≠ ∅
  minimumDistanceClosed : C.minimumDistance > 0
  errorCorrectionCapabilityClosed : C.errorCorrectionCapability > 0

def LinearCodeClosed (C : LinearCodePackage) : Prop :=
  C.generatorMatrix ≠ ∅ ∧ C.parityCheckMatrix ≠ ∅ ∧ C.minimumDistance > 0 ∧ C.errorCorrectionCapability > 0

theorem linear_code_closed_from_evidence (C : LinearCodePackage) (E : LinearCodeEvidence C) : LinearCodeClosed C := by
  rcases E with ⟨hgen, hpar, hmin, herr⟩
  exact And.intro hgen (And.intro hpar (And.intro hmin herr))

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
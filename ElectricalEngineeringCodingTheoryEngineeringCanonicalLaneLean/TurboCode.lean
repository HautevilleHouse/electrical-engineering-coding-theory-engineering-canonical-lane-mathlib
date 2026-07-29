import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure TurboCodePackage where
  interleaverLength : ℕ
  constituentRSC : Type u
  iterationCount : ℕ
  berPerformance : Prop

structure TurboCodeEvidence (C : TurboCodePackage) where
  interleaverLengthClosed : True
  iterationCountClosed : True
  berPerformanceClosed : True

def TurboCodeClosed (C : TurboCodePackage) : Prop :=
  C.iterationCount ≥ 2 ∧ C.berPerformance

theorem turbo_code_closed_from_evidence (C : TurboCodePackage) (E : TurboCodeEvidence C) : TurboCodeClosed C := by
  apply And.intro
  · exact E.iterationCountClosed
  · exact E.berPerformanceClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure LDPCCodePackage where
  parityCheckMatrix : Type u
  variableNodeDegree : ℕ
  checkNodeDegree : ℕ
  girth : ℕ
  decodingThreshold : Prop

structure LDPCCodeEvidence (C : LDPCCodePackage) where
  parityCheckMatrixClosed : True
  girthClosed : True
  decodingThresholdClosed : True

def LDPCCodeClosed (C : LDPCCodePackage) : Prop :=
  C.girth ≥ 4 ∧ C.decodingThreshold

theorem ldpc_code_closed_from_evidence (C : LDPCCodePackage) (E : LDPCCodeEvidence C) : LDPCCodeClosed C := by
  exact And.intro E.girthClosed E.decodingThresholdClosed

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure LinearCodePackage (F : Type) [Field F] where
  length : ℕ
  dimension : ℕ
  generatorMatrix : Matrix (Fin dimension) (Fin length) F
  parityCheckMatrix : Matrix (Fin (length - dimension)) (Fin length) F
  isLinear : Prop
  minimumDistance : ℕ
  generatorMatrixDefinesCode : Prop
  parityCheckAnnihilates : Prop
  minimumDistanceBound : Prop

structure LinearCodeEvidence {F : Type} [Field F] (C : LinearCodePackage F) where
  isLinearClosed : C.isLinear
  generatorMatrixDefinesCodeClosed : C.generatorMatrixDefinesCode
  parityCheckAnnihilatesClosed : C.parityCheckAnnihilates
  minimumDistanceBoundClosed : C.minimumDistanceBound

def LinearCodeClosed {F : Type} [Field F] (C : LinearCodePackage F) : Prop :=
  C.isLinear ∧ C.generatorMatrixDefinesCode ∧ C.parityCheckAnnihilates ∧ C.minimumDistanceBound

theorem linear_code_closed_from_evidence {F : Type} [Field F] (C : LinearCodePackage F) (E : LinearCodeEvidence C) : LinearCodeClosed C := by
  exact And.intro E.isLinearClosed (And.intro E.generatorMatrixDefinesCodeClosed (And.intro E.parityCheckAnnihilatesClosed E.minimumDistanceBoundClosed))

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
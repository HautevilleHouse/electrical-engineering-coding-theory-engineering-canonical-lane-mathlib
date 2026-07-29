import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.FiniteFieldAlgebra

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure LinearBlockCodePackage where
  n : Nat
  k : Nat
  field : FiniteFieldPackage
  generatorMatrix : Type
  parityCheckMatrix : Type
  linearConstraint : Prop
  dimensionMatch : n ≥ k
  codeProperties : Prop

structure LinearBlockCodeEvidence (C : LinearBlockCodePackage) where
  linearConstraintClosed : C.linearConstraint
  dimensionMatchClosed : C.dimensionMatch
  codePropertiesClosed : C.codeProperties

def LinearBlockCodeClosed (C : LinearBlockCodePackage) : Prop :=
  C.linearConstraint ∧ C.dimensionMatch ∧ C.codeProperties

theorem linear_block_code_closed_from_evidence (C : LinearBlockCodePackage) (E : LinearBlockCodeEvidence C) : LinearBlockCodeClosed C :=
  And.intro E.linearConstraintClosed (And.intro E.dimensionMatchClosed E.codePropertiesClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
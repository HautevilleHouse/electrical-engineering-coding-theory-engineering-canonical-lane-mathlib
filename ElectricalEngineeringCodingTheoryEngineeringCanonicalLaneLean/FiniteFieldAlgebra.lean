import Mathlib.FieldTheory.Finite.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure FiniteFieldPackage where
  q : Nat
  fieldType : Type
  fieldOperations : Prop
  characteristicPrime : Prop
  fieldDegree : Nat
  primitiveElementExists : Prop
  closureEvidence : fieldOperations ∧ characteristicPrime ∧ primitiveElementExists

def FiniteFieldClosed (F : FiniteFieldPackage) : Prop :=
  F.fieldOperations ∧ F.characteristicPrime ∧ F.primitiveElementExists

theorem finite_field_closed_from_evidence (F : FiniteFieldPackage) (E : F.closureEvidence) : FiniteFieldClosed F :=
  E

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure CodingAdmittedObject where
  code : Type
  alphabet : Type
  rate : ℚ
  blockLength : ℕ
  distance : ℕ
  decodingErrorProbability : ℚ
  conclusion : decodingErrorProbability ≤ (1 : ℚ) / (2 : ℚ)

structure AdmissibleClass where
  object : CodingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.rate > 0 ∧ A.object.distance ≥ 1) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
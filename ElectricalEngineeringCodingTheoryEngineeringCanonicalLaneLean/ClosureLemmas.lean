import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

def CodingTheoryWitnessClosed (O : CodingTheoryAdmittedObject) : Prop :=
  O.maxErrorProbability

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CodingTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.witness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
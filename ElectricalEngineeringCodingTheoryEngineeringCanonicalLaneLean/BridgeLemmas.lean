import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.rate > 0 ∧ A.object.distance ≥ 1

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
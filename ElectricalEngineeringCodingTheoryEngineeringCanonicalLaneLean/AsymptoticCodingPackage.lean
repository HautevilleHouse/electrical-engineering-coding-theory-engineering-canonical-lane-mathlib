import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.ErrorCorrectingPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure AsymptoticCodingPackage {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} (E : ErrorCorrectingPackage D) where
  capacityAchievableAsymptotically : Prop
  shannonLimit : Prop
  polarCodeConstruction : Prop

structure AsymptoticCodingEvidence {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} {E : ErrorCorrectingPackage D} (A : AsymptoticCodingPackage E) where
  capacityAchievableAsymptoticallyClosed : A.capacityAchievableAsymptotically
  shannonLimitClosed : A.shannonLimit
  polarCodeConstructionClosed : A.polarCodeConstruction

def AsymptoticCodingClosed {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} {E : ErrorCorrectingPackage D} (A : AsymptoticCodingPackage E) : Prop :=
  A.capacityAchievableAsymptotically ∧ A.shannonLimit ∧ A.polarCodeConstruction

theorem asymptotic_coding_closed_from_evidence {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} {E : ErrorCorrectingPackage D} (A : AsymptoticCodingPackage E) (Ev : AsymptoticCodingEvidence A) : AsymptoticCodingClosed A := by
  exact And.intro Ev.capacityAchievableAsymptoticallyClosed (And.intro Ev.shannonLimitClosed Ev.polarCodeConstructionClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
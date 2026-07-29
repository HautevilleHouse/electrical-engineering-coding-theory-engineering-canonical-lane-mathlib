import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.DecodingPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure ErrorCorrectingPackage {C : ChannelPackage} {P : CodeConstructionPackage C} (D : DecodingPackage P) where
  minimumDistance : Nat
  gilbertVarshamovBound : minimumDistance ≥ blockLength * (1 - H(2*errorRate))  -- placeholder
  spherePackingBound : Prop
  hammingBound : Prop

structure ErrorCorrectingEvidence {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} (E : ErrorCorrectingPackage D) where
  gilbertVarshamovBoundClosed : E.gilbertVarshamovBound
  spherePackingBoundClosed : E.spherePackingBound
  hammingBoundClosed : E.hammingBound

def ErrorCorrectingClosed {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} (E : ErrorCorrectingPackage D) : Prop :=
  E.gilbertVarshamovBound ∧ E.spherePackingBound ∧ E.hammingBound

theorem error_correcting_closed_from_evidence {C : ChannelPackage} {P : CodeConstructionPackage C} {D : DecodingPackage P} (E : ErrorCorrectingPackage D) (Ev : ErrorCorrectingEvidence E) : ErrorCorrectingClosed E := by
  exact And.intro Ev.gilbertVarshamovBoundClosed (And.intro Ev.spherePackingBoundClosed Ev.hammingBoundClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
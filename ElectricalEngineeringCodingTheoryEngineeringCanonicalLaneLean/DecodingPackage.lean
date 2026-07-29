import HautevilleHouse.ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.CodeConstructionPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure DecodingPackage {C : ChannelPackage} (P : CodeConstructionPackage C) where
  decodingErrorProbability : ℝ
  maximumLikelihood : Prop
  boundedDistanceDecoding : Prop
  errorBound : Prop

structure DecodingEvidence {C : ChannelPackage} {P : CodeConstructionPackage C} (D : DecodingPackage P) where
  maximumLikelihoodClosed : D.maximumLikelihood
  boundedDistanceDecodingClosed : D.boundedDistanceDecoding
  errorBoundClosed : D.errorBound

def DecodingClosed {C : ChannelPackage} {P : CodeConstructionPackage C} (D : DecodingPackage P) : Prop :=
  D.maximumLikelihood ∧ D.boundedDistanceDecoding ∧ D.errorBound

theorem decoding_closed_from_evidence {C : ChannelPackage} {P : CodeConstructionPackage C} (D : DecodingPackage P) (E : DecodingEvidence D) : DecodingClosed D := by
  exact And.intro E.maximumLikelihoodClosed (And.intro E.boundedDistanceDecodingClosed E.errorBoundClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
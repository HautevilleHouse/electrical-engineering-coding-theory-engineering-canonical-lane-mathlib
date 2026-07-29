import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.SyndromeDecodingPackage
import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.ChannelModelPackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure DecoderPerformancePackage {C : LinearBlockCodePackage} {D : SyndromeDecodingPackage C} (M : ChannelModelPackage) where
  errorProbability : Prop
  decodingComplexity : Prop
  capacityAchieving : Prop
  performanceBounded : errorProbability ∧ decodingComplexity ∧ capacityAchieving

structure DecoderPerformanceEvidence {C : LinearBlockCodePackage} {D : SyndromeDecodingPackage C} {M : ChannelModelPackage} (P : DecoderPerformancePackage M) where
  errorProbabilityClosed : P.errorProbability
  decodingComplexityClosed : P.decodingComplexity
  capacityAchievingClosed : P.capacityAchieving

def DecoderPerformanceClosed {C : LinearBlockCodePackage} {D : SyndromeDecodingPackage C} {M : ChannelModelPackage} (P : DecoderPerformancePackage M) : Prop :=
  P.errorProbability ∧ P.decodingComplexity ∧ P.capacityAchieving

theorem decoder_performance_closed_from_evidence {C : LinearBlockCodePackage} {D : SyndromeDecodingPackage C} {M : ChannelModelPackage} (P : DecoderPerformancePackage M) (E : DecoderPerformanceEvidence P) : DecoderPerformanceClosed P :=
  And.intro E.errorProbabilityClosed (And.intro E.decodingComplexityClosed E.capacityAchievingClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
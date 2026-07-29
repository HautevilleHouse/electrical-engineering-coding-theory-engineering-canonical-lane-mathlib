import ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean.LinearBlockCodePackage

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure SyndromeDecodingPackage (C : LinearBlockCodePackage) where
  syndromeMap : Type
  syndromeDecodingAlgorithm : Type
  correctsErrors : Prop
  boundedErrorWeight : Nat
  uniqueDecoding : Prop

structure SyndromeDecodingEvidence {C : LinearBlockCodePackage} (D : SyndromeDecodingPackage C) where
  correctsErrorsClosed : D.correctsErrors
  boundedErrorWeightClosed : D.boundedErrorWeight > 0
  uniqueDecodingClosed : D.uniqueDecoding

def SyndromeDecodingClosed {C : LinearBlockCodePackage} (D : SyndromeDecodingPackage C) : Prop :=
  D.correctsErrors ∧ D.boundedErrorWeight > 0 ∧ D.uniqueDecoding

theorem syndrome_decoding_closed_from_evidence {C : LinearBlockCodePackage} (D : SyndromeDecodingPackage C) (E : SyndromeDecodingEvidence D) : SyndromeDecodingClosed D :=
  And.intro E.correctsErrorsClosed (And.intro E.boundedErrorWeightClosed E.uniqueDecodingClosed)

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
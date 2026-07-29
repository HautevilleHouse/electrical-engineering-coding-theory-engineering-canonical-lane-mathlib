import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean

structure CodingSpace where
  alphabet : Type
  blockLength : Nat

def capacityAchievable (γ : ℝ) (blockLength : Nat) : Prop := True

structure CodingAdmittedObject where
  space : CodingSpace
  codebook : Type
  encoder : Type
  decoder : Type
  maxErrorProbability : ℝ
  rate : ℝ
  capacityAchieved : capacityAchievable rate space.blockLength
  conclusion : capacityAchieved

end ElectricalEngineeringCodingTheoryEngineeringCanonicalLaneLean
end HautevilleHouse
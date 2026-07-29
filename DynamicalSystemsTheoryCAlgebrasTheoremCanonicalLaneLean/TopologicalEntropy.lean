import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure TopologicalEntropyPackage where
  dynamicalSystem : DynamicalSystemCStarAlgebra
  entropyValue : ℝ≥0
  variationalPrincipleHolds : Prop
  approximationBySubshifts : Prop

structure TopologicalEntropyEvidence (T : TopologicalEntropyPackage) where
  entropyValueNonnegative : T.entropyValue ≥ 0
  variationalPrincipleClosed : T.variationalPrincipleHolds
  approximationBySubshiftsClosed : T.approximationBySubshifts

def TopologicalEntropyClosed (T : TopologicalEntropyPackage) : Prop :=
  T.entropyValue ≥ 0 ∧ T.variationalPrincipleHolds ∧ T.approximationBySubshifts

theorem topological_entropy_closed_from_evidence (T : TopologicalEntropyPackage) (E : TopologicalEntropyEvidence T) : TopologicalEntropyClosed T := by
  exact And.intro E.entropyValueNonnegative (And.intro E.variationalPrincipleClosed E.approximationBySubshiftsClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

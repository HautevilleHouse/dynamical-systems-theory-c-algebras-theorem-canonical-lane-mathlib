import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure DynamicalSystemCStarAlgebra where
  carrier : Type u
  algebra : CStarAlgebra carrier
  dynamics : carrier → carrier
  invariantStates : Set carrier
  ergodicDecomposition : Prop

structure DynamicalSystemCStarAlgebraEvidence (A : DynamicalSystemCStarAlgebra) where
  algebraClosed : A.algebra.axiomsComplete
  dynamicsClosed : A.dynamics ∈ CStarAlgebraEnd A.algebra
  invariantStatesClosed : A.invariantStates ≠ ∅
  ergodicDecompositionClosed : A.ergodicDecomposition

def DynamicalSystemCStarAlgebraClosed (A : DynamicalSystemCStarAlgebra) : Prop :=
  A.algebra.axiomsComplete ∧ A.dynamics ∈ CStarAlgebraEnd A.algebra ∧ A.invariantStates ≠ ∅ ∧ A.ergodicDecomposition

theorem dynamical_system_c_star_algebra_closed_from_evidence (A : DynamicalSystemCStarAlgebra) (E : DynamicalSystemCStarAlgebraEvidence A) : DynamicalSystemCStarAlgebraClosed A := by
  exact And.intro E.algebraClosed (And.intro E.dynamicsClosed (And.intro E.invariantStatesClosed E.ergodicDecompositionClosed))

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

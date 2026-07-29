import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure KTheoryIndexPairingPackage where
  cStarAlgebra : CStarAlgebra
  projection : Projection (K0Group cStarAlgebra)
  indexMap : K0Group → ℤ
  indexTheoremHolds : Prop

structure KTheoryIndexPairingEvidence (K : KTheoryIndexPairingPackage) where
  projectionClosed : K.projection.isIdempotent
  indexMapClosed : K.indexMap.isGroupHomomorphism
  indexTheoremClosed : K.indexTheoremHolds

def KTheoryIndexPairingClosed (K : KTheoryIndexPairingPackage) : Prop :=
  K.projection.isIdempotent ∧ K.indexMap.isGroupHomomorphism ∧ K.indexTheoremHolds

theorem k_theory_index_pairing_closed_from_evidence (K : KTheoryIndexPairingPackage) (E : KTheoryIndexPairingEvidence K) : KTheoryIndexPairingClosed K := by
  exact And.intro E.projectionClosed (And.intro E.indexMapClosed E.indexTheoremClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

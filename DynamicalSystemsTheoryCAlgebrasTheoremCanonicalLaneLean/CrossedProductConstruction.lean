import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.DynamicalSystemCStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CrossedProductPackage (X : CStarDynamicalSystem) where
  covariantRepresentation : Prop
  reducedCrossedProduct : Type u
  fullCrossedProduct : Type u
  nuclearity : Prop
  simplicity : Prop

structure CrossedProductEvidence {X : CStarDynamicalSystem} (C : CrossedProductPackage X) where
  covariantRepresentationClosed : C.covariantRepresentation
  nuclearityClosed : C.nuclearity
  simplicityClosed : C.simplicity

def CrossedProductClosed {X : CStarDynamicalSystem} (C : CrossedProductPackage X) : Prop :=
  C.covariantRepresentation ∧ C.nuclearity ∧ C.simplicity

theorem crossed_product_closed_from_evidence {X : CStarDynamicalSystem}
    (C : CrossedProductPackage X) (E : CrossedProductEvidence C) : CrossedProductClosed C := by
  exact And.intro E.covariantRepresentationClosed (And.intro E.nuclearityClosed E.simplicityClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
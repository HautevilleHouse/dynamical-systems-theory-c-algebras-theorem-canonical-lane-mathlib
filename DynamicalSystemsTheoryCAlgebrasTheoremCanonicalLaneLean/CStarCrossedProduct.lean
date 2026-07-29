import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CStarCrossedProductPackage where
  group : Type u
  action : group → CStarAlgebraEnd A
  crossedProduct : CStarAlgebra
  reducedCrossedProduct : CStarAlgebra
  nuclearity : Prop

structure CStarCrossedProductEvidence (C : CStarCrossedProductPackage) where
  crossedProductClosed : C.crossedProduct.axiomsComplete
  reducedCrossedProductClosed : C.reducedCrossedProduct.axiomsComplete
  nuclearityClosed : C.nuclearity

def CStarCrossedProductClosed (C : CStarCrossedProductPackage) : Prop :=
  C.crossedProduct.axiomsComplete ∧ C.reducedCrossedProduct.axiomsComplete ∧ C.nuclearity

theorem c_star_crossed_product_closed_from_evidence (C : CStarCrossedProductPackage) (E : CStarCrossedProductEvidence C) : CStarCrossedProductClosed C := by
  exact And.intro E.crossedProductClosed (And.intro E.reducedCrossedProductClosed E.nuclearityClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

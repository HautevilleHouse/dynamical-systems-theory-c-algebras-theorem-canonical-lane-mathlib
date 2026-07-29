import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.DynamicalSystemsObjects

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CAlgebraCrossedProductPackage (C : DynamicalSystemCAlgebraConnection) where
  crossedProductCarrier : Type
  multiplication : crossedProductCarrier -> crossedProductCarrier -> crossedProductCarrier
  involution : crossedProductCarrier -> crossedProductCarrier
  norm : crossedProductCarrier -> ℝ
  topology : TopologicalSpace crossedProductCarrier
  productUniversalProperty : Prop
  productUniversalPropertyTerm : productUniversalProperty

structure CAlgebraCrossedProductEvidence {C : DynamicalSystemCAlgebraConnection}
    (P : CAlgebraCrossedProductPackage C) where
  productUniversalPropertyClosed : P.productUniversalProperty

def CAlgebraCrossedProductClosed {C : DynamicalSystemCAlgebraConnection}
    (P : CAlgebraCrossedProductPackage C) : Prop :=
  P.productUniversalProperty

theorem c_algebra_crossed_product_closed_from_evidence
    {C : DynamicalSystemCAlgebraConnection} (P : CAlgebraCrossedProductPackage C)
    (E : CAlgebraCrossedProductEvidence P) : CAlgebraCrossedProductClosed P :=
  E.productUniversalPropertyClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
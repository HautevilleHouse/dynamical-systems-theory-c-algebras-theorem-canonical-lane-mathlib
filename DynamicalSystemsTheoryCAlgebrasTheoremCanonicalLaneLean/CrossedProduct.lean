import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.DynamicalSystem
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CrossedProduct (D : DynamicalSystem) (A : CStarAlgebra) where
  productSpace : Type u
  multiplicationLaw : productSpace → productSpace → productSpace
  involutionLaw : productSpace → productSpace
  normLaw : productSpace → ℝ
  compatibility : Prop
  productCStarCondition : Prop

def CrossedProductClosed {D : DynamicalSystem} {A : CStarAlgebra} (C : CrossedProduct D A) : Prop :=
  C.compatibility ∧ C.productCStarCondition

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
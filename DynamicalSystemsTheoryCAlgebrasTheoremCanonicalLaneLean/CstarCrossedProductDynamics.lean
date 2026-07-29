import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CstarAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  involution : carrier → carrier
  multiplication : carrier → carrier → carrier
  addition : carrier → carrier → carrier
  scalarMultiplication : ℂ → carrier → carrier
  cstarIdentity : ∀ a : carrier, ‖star a * a‖ = ‖a‖ ^ 2

structure GroupAction (A : CstarAlgebra) (G : Type u) [Group G] where
  action : G → A.carrier → A.carrier
  actionRespectsInvolution : ∀ g : G, ∀ a : A.carrier, action g (A.involution a) = A.involution (action g a)
  actionRespectsMultiplication : ∀ g : G, ∀ a b : A.carrier, action g (A.multiplication a b) = A.multiplication (action g a) (action g b)

structure CrossedProductDynamics (A : CstarAlgebra) (G : Type u) [Group G] where
  action : GroupAction A G
  reducedCrossedProduct : CstarAlgebra
  fullCrossedProduct : CstarAlgebra
  nuclearity : Prop
  idealStructure : Prop
  KTheorySequence : Prop

structure CrossedProductEvidence (A : CstarAlgebra) (G : Type u) [Group G]
    (X : CrossedProductDynamics A G) where
  nuclearityClosed : X.nuclearity
  idealStructureClosed : X.idealStructure
  KTheorySequenceClosed : X.KTheorySequence

def CrossedProductClosed (A : CstarAlgebra) (G : Type u) [Group G]
    (X : CrossedProductDynamics A G) : Prop :=
  X.nuclearity ∧ X.idealStructure ∧ X.KTheorySequence

theorem crossed_product_closed_from_evidence (A : CstarAlgebra) (G : Type u) [Group G]
    (X : CrossedProductDynamics A G) (E : CrossedProductEvidence A G X) :
    CrossedProductClosed A G X := by
  exact And.intro E.nuclearityClosed (And.intro E.idealStructureClosed E.KTheorySequenceClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

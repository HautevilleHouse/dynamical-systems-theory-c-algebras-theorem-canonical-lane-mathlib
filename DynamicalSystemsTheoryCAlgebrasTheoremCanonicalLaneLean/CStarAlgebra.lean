import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  involution : carrier → carrier
  multiplication : carrier → carrier → carrier
  algebraStructure : Prop
  involutionIsometry : ∀ a, ‖involution a‖ = ‖a‖
  normSubmultiplicative : ∀ a b, ‖multiplication a b‖ ≤ ‖a‖ * ‖b‖
  positivity : ∀ a, ‖multiplication a a‖ = ‖a‖ ^ 2

def CStarAlgebraClosed (A : CStarAlgebra) : Prop :=
  A.algebraStructure ∧ A.involutionIsometry ∧ A.normSubmultiplicative ∧ A.positivity

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
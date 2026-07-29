import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure DynamicalSystem where
  carrier : Type
  dynamics : carrier -> carrier
  topology : TopologicalSpace carrier

structure CAlgebraObject where
  carrier : Type
  multiplication : carrier -> carrier -> carrier
  involution : carrier -> carrier
  norm : carrier -> ℝ
  topology : TopologicalSpace carrier

structure DynamicalSystemCAlgebraConnection where
  system : DynamicalSystem
  algebra : CAlgebraObject
  representation : system.carrier -> (algebra.carrier -> algebra.carrier)
  continuityCondition : Prop
  equivarianceCondition : Prop
  continuityConditionTerm : continuityCondition
  equivarianceConditionTerm : equivarianceCondition

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
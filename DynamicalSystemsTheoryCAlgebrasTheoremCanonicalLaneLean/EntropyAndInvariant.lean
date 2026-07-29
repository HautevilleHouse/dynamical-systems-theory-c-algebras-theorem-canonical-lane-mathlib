import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.KMSStateClassification

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure EntropyAndInvariantPackage {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    (K : KMSStatePackage C) where
  topologicalEntropy : ℝ
  measureEntropy : ℝ
  variationalPrinciple : Prop
  invariantMeasureExistence : Prop

structure EntropyAndInvariantEvidence {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    {K : KMSStatePackage C} (E : EntropyAndInvariantPackage K) where
  variationalPrincipleClosed : E.variationalPrinciple
  invariantMeasureExistenceClosed : E.invariantMeasureExistence

def EntropyAndInvariantClosed {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    {K : KMSStatePackage C} (E : EntropyAndInvariantPackage K) : Prop :=
  E.variationalPrinciple ∧ E.invariantMeasureExistence

theorem entropy_and_invariant_closed_from_evidence {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    {K : KMSStatePackage C} (E : EntropyAndInvariantPackage K) (Ev : EntropyAndInvariantEvidence E) :
    EntropyAndInvariantClosed E := by
  exact And.intro Ev.variationalPrincipleClosed Ev.invariantMeasureExistenceClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
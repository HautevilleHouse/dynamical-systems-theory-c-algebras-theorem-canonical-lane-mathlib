import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CrossedProductConstruction

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure KMSStatePackage {X : CStarDynamicalSystem} {C : CrossedProductPackage X} where
  groundState : Type u
  kmsStatesAtTemperature : ℝ → Prop
  phaseTransition : Prop
  uniqueness : Prop

structure KMSStateEvidence {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    (K : KMSStatePackage C) where
  groundStateClosed : K.groundState
  kmsStatesAtTemperatureClosed : ∀ β : ℝ, K.kmsStatesAtTemperature β
  phaseTransitionClosed : K.phaseTransition
  uniquenessClosed : K.uniqueness

def KMSStateClosed {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    (K : KMSStatePackage C) : Prop :=
  K.groundState ∧ (∀ β : ℝ, K.kmsStatesAtTemperature β) ∧ K.phaseTransition ∧ K.uniqueness

theorem kms_state_closed_from_evidence {X : CStarDynamicalSystem} {C : CrossedProductPackage X}
    (K : KMSStatePackage C) (E : KMSStateEvidence K) : KMSStateClosed K := by
  exact And.intro E.groundStateClosed
    (And.intro E.kmsStatesAtTemperatureClosed (And.intro E.phaseTransitionClosed E.uniquenessClosed))

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
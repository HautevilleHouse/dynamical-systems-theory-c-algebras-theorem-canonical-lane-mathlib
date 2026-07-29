import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CstarCrossedProductDynamics

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure KMSState (A : CstarAlgebra) where
  state : A.carrier → ℂ
  positivity : ∀ a : A.carrier, state (A.multiplication (A.involution a) a) ≥ 0
  normalization : state 1 = 1
  KMScondition : Prop

structure TimeEvolution (A : CstarAlgebra) where
  dynamics : ℝ → A.carrier → A.carrier
  oneParameterGroup : ∀ t s : ℝ, ∀ a : A.carrier, dynamics (t + s) a = dynamics t (dynamics s a)
  automorphism : ∀ t : ℝ, ∀ a b : A.carrier,
    dynamics t (A.multiplication a b) = A.multiplication (dynamics t a) (dynamics t b)

structure KMSStatePackage (A : CstarAlgebra) where
  timeEvolution : TimeEvolution A
  kmsStates : Set (KMSState A)
  uniquenessAtInverseTemperature : Prop
  phaseTransition : Prop

structure KMSStateEvidence (A : CstarAlgebra) (K : KMSStatePackage A) where
  uniquenessAtInverseTemperatureClosed : K.uniquenessAtInverseTemperature
  phaseTransitionClosed : K.phaseTransition

def KMSStatePackageClosed (A : CstarAlgebra) (K : KMSStatePackage A) : Prop :=
  K.uniquenessAtInverseTemperature ∧ K.phaseTransition

theorem kms_state_package_closed_from_evidence (A : CstarAlgebra)
    (K : KMSStatePackage A) (E : KMSStateEvidence A K) : KMSStatePackageClosed A K := by
  exact And.intro E.uniquenessAtInverseTemperatureClosed E.phaseTransitionClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure KMSStatesEquilibriumPackage where
  inverseTemperature : ℝ
  kmsCondition : Prop
  equilibriumStates : Set (State carrier)
  variationalPrinciple : Prop

structure KMSStatesEquilibriumEvidence (K : KMSStatesEquilibriumPackage) where
  kmsConditionClosed : K.kmsCondition
  equilibriumStatesNonempty : K.equilibriumStates ≠ ∅
  variationalPrincipleClosed : K.variationalPrinciple

def KMSStatesEquilibriumClosed (K : KMSStatesEquilibriumPackage) : Prop :=
  K.kmsCondition ∧ K.equilibriumStates ≠ ∅ ∧ K.variationalPrinciple

theorem kms_states_equilibrium_closed_from_evidence (K : KMSStatesEquilibriumPackage) (E : KMSStatesEquilibriumEvidence K) : KMSStatesEquilibriumClosed K := by
  exact And.intro E.kmsConditionClosed (And.intro E.equilibriumStatesNonempty E.variationalPrincipleClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

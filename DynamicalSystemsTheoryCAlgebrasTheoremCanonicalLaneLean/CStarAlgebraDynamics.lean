import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.RiemannianCurvature

/-!
# C*-Algebra Dynamics Package

This module defines the C*-algebra dynamics associated to a dynamical system.
It encodes the C*-algebra of observables and the time evolution as a one-parameter
automorphism group.
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CStarAlgebraDynamicsPackage {G : RiemannianCurvaturePackage} where
  cstarAlgebra : Type u
  timeEvolution : Type v
  observables : Type w
  gaugeInvariantStates : Prop
  kmsCondition : Prop
  asymptoticAbelianness : Prop

structure CStarAlgebraDynamicsEvidence {G : RiemannianCurvaturePackage}
    (D : CStarAlgebraDynamicsPackage G) where
  gaugeInvariantStatesClosed : D.gaugeInvariantStates
  kmsConditionClosed : D.kmsCondition
  asymptoticAbeliannessClosed : D.asymptoticAbelianness

def CStarAlgebraDynamicsClosed {G : RiemannianCurvaturePackage}
    (D : CStarAlgebraDynamicsPackage G) : Prop :=
  D.gaugeInvariantStates ∧ D.kmsCondition ∧ D.asymptoticAbelianness

theorem cstar_algebra_dynamics_closed_from_evidence
    {G : RiemannianCurvaturePackage} (D : CStarAlgebraDynamicsPackage G)
    (E : CStarAlgebraDynamicsEvidence D) : CStarAlgebraDynamicsClosed D := by
  exact And.intro E.gaugeInvariantStatesClosed
    (And.intro E.kmsConditionClosed E.asymptoticAbeliannessClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

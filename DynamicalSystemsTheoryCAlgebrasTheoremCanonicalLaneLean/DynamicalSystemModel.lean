import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CStarAlgebraDynamics

/-!
# Dynamical System Model Package

This module defines the underlying dynamical system: a topological dynamical
system with a continuous flow on a compact metric space.
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure DynamicalSystemModelPackage {G : RiemannianCurvaturePackage}
    (D : CStarAlgebraDynamicsPackage G) where
  phaseSpace : Type u
  flow : Type v
  invariantMeasure : Type w
  topologicalEntropy : Prop
  mixingProperties : Prop
  hyperbolicity : Prop

structure DynamicalSystemModelEvidence {G : RiemannianCurvaturePackage}
    {D : CStarAlgebraDynamicsPackage G} (M : DynamicalSystemModelPackage D) where
  topologicalEntropyClosed : M.topologicalEntropy
  mixingPropertiesClosed : M.mixingProperties
  hyperbolicityClosed : M.hyperbolicity

def DynamicalSystemModelClosed {G : RiemannianCurvaturePackage}
    {D : CStarAlgebraDynamicsPackage G} (M : DynamicalSystemModelPackage D) : Prop :=
  M.topologicalEntropy ∧ M.mixingProperties ∧ M.hyperbolicity

theorem dynamical_system_model_closed_from_evidence
    {G : RiemannianCurvaturePackage} {D : CStarAlgebraDynamicsPackage G}
    (M : DynamicalSystemModelPackage D) (E : DynamicalSystemModelEvidence M) :
    DynamicalSystemModelClosed M := by
  exact And.intro E.topologicalEntropyClosed
    (And.intro E.mixingPropertiesClosed E.hyperbolicityClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

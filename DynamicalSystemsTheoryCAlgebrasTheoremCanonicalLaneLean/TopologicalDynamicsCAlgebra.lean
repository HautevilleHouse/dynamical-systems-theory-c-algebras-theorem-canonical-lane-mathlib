import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CAlgebraIrreducibleRepresentations

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure TopologicalDynamicsCAlgebraPackage {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C} (R : IrreducibleRepresentation P) where
  topologicalTransitivity : Prop
  minimality : Prop
  topologicalTransitivityTerm : topologicalTransitivity
  minimalityTerm : minimality

structure TopologicalDynamicsCAlgebraEvidence {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C} {R : IrreducibleRepresentation P}
    (D : TopologicalDynamicsCAlgebraPackage R) where
  topologicalTransitivityClosed : D.topologicalTransitivity
  minimalityClosed : D.minimality

def TopologicalDynamicsCAlgebraClosed {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C} {R : IrreducibleRepresentation P}
    (D : TopologicalDynamicsCAlgebraPackage R) : Prop :=
  D.topologicalTransitivity ∧ D.minimality

theorem topological_dynamics_c_algebra_closed_from_evidence
    {C : DynamicalSystemCAlgebraConnection} {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P} (D : TopologicalDynamicsCAlgebraPackage R)
    (E : TopologicalDynamicsCAlgebraEvidence D) : TopologicalDynamicsCAlgebraClosed D :=
  And.intro E.topologicalTransitivityClosed E.minimalityClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
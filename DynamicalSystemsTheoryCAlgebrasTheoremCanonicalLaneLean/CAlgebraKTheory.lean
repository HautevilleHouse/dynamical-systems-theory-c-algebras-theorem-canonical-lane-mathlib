import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.TopologicalDynamicsCAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CAlgebraKTheoryPackage {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    (D : TopologicalDynamicsCAlgebraPackage R) where
  k0Group : Type
  k1Group : Type
  k0GroupDefined : Prop
  k1GroupDefined : Prop
  indexMap : k0Group -> k1Group
  indexMapTerm : indexMap
  k0GroupDefinedTerm : k0GroupDefined
  k1GroupDefinedTerm : k1GroupDefined

structure CAlgebraKTheoryEvidence {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    (K : CAlgebraKTheoryPackage D) where
  k0GroupDefinedClosed : K.k0GroupDefined
  k1GroupDefinedClosed : K.k1GroupDefined

def CAlgebraKTheoryClosed {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    (K : CAlgebraKTheoryPackage D) : Prop :=
  K.k0GroupDefined ∧ K.k1GroupDefined ∧ True

theorem c_algebra_k_theory_closed_from_evidence
    {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    (K : CAlgebraKTheoryPackage D) (E : CAlgebraKTheoryEvidence K) :
    CAlgebraKTheoryClosed K :=
  And.intro E.k0GroupDefinedClosed (And.intro E.k1GroupDefinedClosed True.intro)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
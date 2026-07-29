import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CAlgebraKTheory

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure ClassificationTheoremPackage {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    (K : CAlgebraKTheoryPackage D) where
  classificationResult : Prop
  classificationResultTerm : classificationResult

structure ClassificationTheoremEvidence {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    {K : CAlgebraKTheoryPackage D}
    (T : ClassificationTheoremPackage K) where
  classificationResultClosed : T.classificationResult

def ClassificationClosed {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    {K : CAlgebraKTheoryPackage D}
    (T : ClassificationTheoremPackage K) : Prop :=
  T.classificationResult

theorem classification_closed_from_evidence
    {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C}
    {R : IrreducibleRepresentation P}
    {D : TopologicalDynamicsCAlgebraPackage R}
    {K : CAlgebraKTheoryPackage D}
    (T : ClassificationTheoremPackage K) (E : ClassificationTheoremEvidence T) :
    ClassificationClosed T :=
  E.classificationResultClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
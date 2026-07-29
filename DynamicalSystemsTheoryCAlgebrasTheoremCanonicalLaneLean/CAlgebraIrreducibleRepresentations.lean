import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CAlgebraCrossedProduct

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure IrreducibleRepresentation {C : DynamicalSystemCAlgebraConnection}
    (P : CAlgebraCrossedProductPackage C) where
  representationSpace : Type
  innerProduct : InnerProductSpace ℝ representationSpace
  representationMap : P.crossedProductCarrier -> (representationSpace →L[ℝ] representationSpace)
  irreducibilityCondition : Prop
  irreducibilityConditionTerm : irreducibilityCondition

structure IrreducibleRepresentationEvidence {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C} (R : IrreducibleRepresentation P) where
  irreducibilityConditionClosed : R.irreducibilityCondition

def IrreducibleRepresentationClosed {C : DynamicalSystemCAlgebraConnection}
    {P : CAlgebraCrossedProductPackage C} (R : IrreducibleRepresentation P) : Prop :=
  R.irreducibilityCondition

theorem irreducible_representation_closed_from_evidence
    {C : DynamicalSystemCAlgebraConnection} {P : CAlgebraCrossedProductPackage C}
    (R : IrreducibleRepresentation P) (E : IrreducibleRepresentationEvidence R) :
    IrreducibleRepresentationClosed R :=
  E.irreducibilityConditionClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
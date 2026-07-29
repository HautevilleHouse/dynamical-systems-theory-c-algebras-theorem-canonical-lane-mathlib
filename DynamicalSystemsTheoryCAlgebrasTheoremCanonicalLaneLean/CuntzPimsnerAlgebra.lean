import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure CuntzPimsnerAlgebraPackage where
  correspondence : CStarCorrespondence A B
  cuntzPimsnerAlgebra : CStarAlgebra
  gaugeAction : ContinuousAction UnitCircle
  universality : Prop

structure CuntzPimsnerAlgebraEvidence (C : CuntzPimsnerAlgebraPackage) where
  algebraClosed : C.cuntzPimsnerAlgebra.axiomsComplete
  gaugeActionClosed : C.gaugeAction.isContinuous
  universalityClosed : C.universality

def CuntzPimsnerAlgebraClosed (C : CuntzPimsnerAlgebraPackage) : Prop :=
  C.cuntzPimsnerAlgebra.axiomsComplete ∧ C.gaugeAction.isContinuous ∧ C.universality

theorem cuntz_pimsner_algebra_closed_from_evidence (C : CuntzPimsnerAlgebraPackage) (E : CuntzPimsnerAlgebraEvidence C) : CuntzPimsnerAlgebraClosed C := by
  exact And.intro E.algebraClosed (And.intro E.gaugeActionClosed E.universalityClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

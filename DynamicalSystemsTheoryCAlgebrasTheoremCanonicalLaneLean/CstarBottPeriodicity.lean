import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CstarNoncommutativeTopology

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure BottPeriodicityInCstar (A : CstarAlgebra) where
  kTheoryGroup : Type u
  bottMap : A.carrier → A.carrier  -- placeholder
  periodicity : Prop
  sixTermExactSequence : Prop
  suspension : A → CstarAlgebra

structure BottPeriodicityEvidence (A : CstarAlgebra) (B : BottPeriodicityInCstar A) where
  periodicityClosed : B.periodicity
  sixTermExactSequenceClosed : B.sixTermExactSequence

def BottPeriodicityClosed (A : CstarAlgebra) (B : BottPeriodicityInCstar A) : Prop :=
  B.periodicity ∧ B.sixTermExactSequence

theorem bott_periodicity_closed_from_evidence (A : CstarAlgebra)
    (B : BottPeriodicityInCstar A) (E : BottPeriodicityEvidence A B) :
    BottPeriodicityClosed A B := by
  exact And.intro E.periodicityClosed E.sixTermExactSequenceClosed

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

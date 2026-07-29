import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.DynamicalSystem
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure PimsnerVoiculescuExactSequence (D : DynamicalSystem) (A : CStarAlgebra) where
  exactSequence : Type u
  indexMap : Prop
  exponentialMap : Prop
  boundaryMap : Prop

def PimsnerVoiculescuExactSequenceClosed (P : PimsnerVoiculescuExactSequence D A) : Prop :=
  P.indexMap ∧ P.exponentialMap ∧ P.boundaryMap

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure KKTheoryStabilisation (A : CStarAlgebra) where
  kasparovModule : Type u
  stabilisationIsomorphism : Prop
  homotopyInvariance : Prop
  splitExactness : Prop
  periodicity : Prop

def KKTheoryStabilisationClosed (K : KKTheoryStabilisation A) : Prop :=
  K.stabilisationIsomorphism ∧ K.homotopyInvariance ∧ K.splitExactness ∧ K.periodicity

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.DynamicalSystem
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure ConnesThomIsomorphism (D : DynamicalSystem) (A : CStarAlgebra) where
  thomClass : Type u
  isomorphismMap : Prop
  indexMap : Prop
  exactSequence : Prop

def ConnesThomIsomorphismClosed (C : ConnesThomIsomorphism D A) : Prop :=
  C.isomorphismMap ∧ C.indexMap ∧ C.exactSequence

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
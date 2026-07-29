import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  timeDomain : Type v
  evolution : timeDomain → stateSpace → stateSpace
  semigroupProperty : ∀ t s x, evolution (t + s) x = evolution t (evolution s x)
  identityAtZero : ∀ x, evolution 0 x = x

def DynamicalSystemClosed (D : DynamicalSystem) : Prop :=
  D.semigroupProperty ∧ D.identityAtZero

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
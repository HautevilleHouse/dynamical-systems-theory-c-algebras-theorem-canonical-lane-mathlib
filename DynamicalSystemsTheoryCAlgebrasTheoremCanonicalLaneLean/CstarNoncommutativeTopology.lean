import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.CstarCrossedProductDynamics

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

structure PrimitiveIdealSpace (A : CstarAlgebra) where
  carrier : Type u
  topology : TopologicalSpace carrier
  bijectionWithIdeals : Prop
  jacobsonTopology : Prop

structure NoncommutativeTopologyPackage (A : CstarAlgebra) where
  primitiveIdealSpace : PrimitiveIdealSpace A
  continuousFields : Prop
  hausdorffCompletion : Prop
  chernConnesCharacter : Prop

structure NoncommutativeTopologyEvidence (A : CstarAlgebra)
    (N : NoncommutativeTopologyPackage A) where
  continuousFieldsClosed : N.continuousFields
  hausdorffCompletionClosed : N.hausdorffCompletion
  chernConnesCharacterClosed : N.chernConnesCharacter

def NoncommutativeTopologyClosed (A : CstarAlgebra)
    (N : NoncommutativeTopologyPackage A) : Prop :=
  N.continuousFields ∧ N.hausdorffCompletion ∧ N.chernConnesCharacter

theorem noncommutative_topology_closed_from_evidence (A : CstarAlgebra)
    (N : NoncommutativeTopologyPackage A) (E : NoncommutativeTopologyEvidence A N) :
    NoncommutativeTopologyClosed A N := by
  exact And.intro E.continuousFieldsClosed (And.intro E.hausdorffCompletionClosed E.chernConnesCharacterClosed)

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

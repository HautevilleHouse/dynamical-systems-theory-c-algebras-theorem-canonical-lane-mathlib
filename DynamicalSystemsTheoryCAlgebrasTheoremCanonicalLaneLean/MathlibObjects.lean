import DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  compactMetricSpace : Prop
  continuousFlow : Prop
  cstarAlgebraModel : Type
  cstarAlgebraTopology : TopologicalSpace cstarAlgebraModel
  isomorphicToCstarAlgebra : Prop
  conclusion : isomorphicToCstarAlgebra

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.isomorphicToCstarAlgebra

end DynamicalSystemsTheoryCAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse

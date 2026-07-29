import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure DimensionTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionTheoryAdmittedObject where
  space : DimensionTheorySpace
  finiteCWComplex : Prop
  dimensionDefined : Prop
  homologyGroupsComputed : Prop
  conclusion : finiteCWComplex ∧ dimensionDefined ∧ homologyGroupsComputed

structure DimensionTheoryEndgameState where
  object : DimensionTheoryAdmittedObject

def DimensionTheoryWitnessClosed (O : DimensionTheoryAdmittedObject) : Prop :=
  O.finiteCWComplex ∧ O.dimensionDefined ∧ O.homologyGroupsComputed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
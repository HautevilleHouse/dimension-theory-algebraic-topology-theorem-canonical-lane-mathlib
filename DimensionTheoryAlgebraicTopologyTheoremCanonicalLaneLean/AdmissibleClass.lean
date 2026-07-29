import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure DimensionTheoryAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  coveringDimension : Nat
  homologicalDimension : Nat
  dimensionEquality : coveringDimension = homologicalDimension
  conclusion : dimensionEquality

structure AdmissibleClass where
  object : DimensionTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DimensionTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def DimensionTheoryWitnessClosed (O : DimensionTheoryAdmittedObject) : Prop :=
  O.dimensionEquality

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure DimensionTheoryAdmissibleObject where
  space : Type u
  topology : TopologicalSpace space
  isCompact : Prop
  isHausdorff : Prop
  hasTopologicalDimension n : Prop
  inductiveLimitClosed : Prop
  conclusion : inductiveLimitClosed

structure AdmissibleClass where
  object : DimensionTheoryAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DimensionTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
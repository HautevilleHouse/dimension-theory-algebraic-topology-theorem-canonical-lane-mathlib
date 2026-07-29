import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
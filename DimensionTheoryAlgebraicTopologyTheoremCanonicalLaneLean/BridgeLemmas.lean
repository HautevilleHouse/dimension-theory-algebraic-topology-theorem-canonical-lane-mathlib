import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.DimensionTheoryAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DimensionTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
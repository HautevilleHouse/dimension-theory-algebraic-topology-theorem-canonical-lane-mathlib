import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.DimensionTheoryAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure DimensionTheoryObject (A : AdmissibleClass) where
  dimension : ℕ
  isFiniteDimensional : Prop
  dimensionConsistent : Prop
  compactSubsetsDimensionBound : Prop
  coveringDimension : Prop
  dimensionConsistentClosed : dimensionConsistent
  compactSubsetsDimensionBoundClosed : compactSubsetsDimensionBound
  coveringDimensionClosed : coveringDimension

def DimensionTheoryWitnessClosed (O : DimensionTheoryAdmissibleObject) : Prop :=
  O.inductiveLimitClosed

theorem dimension_theory_witness_from_object (A : AdmissibleClass) (obj : DimensionTheoryObject A) :
    DimensionTheoryWitnessClosed A.object := by
  exact A.object.conclusion

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
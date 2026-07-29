import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure DimensionFunctionPackage (S : SimplicialComplexPackage) where
  topologicalDimension : Prop
  inductiveDimension : Prop
  coveringDimension : Prop
  dimensionEquality : Prop

structure DimensionFunctionEvidence {S : SimplicialComplexPackage} (D : DimensionFunctionPackage S) where
  topologicalDimensionClosed : D.topologicalDimension
  inductiveDimensionClosed : D.inductiveDimension
  coveringDimensionClosed : D.coveringDimension
  dimensionEqualityClosed : D.dimensionEquality

def DimensionFunctionClosed {S : SimplicialComplexPackage} (D : DimensionFunctionPackage S) : Prop :=
  D.topologicalDimension ∧ D.inductiveDimension ∧ D.coveringDimension ∧ D.dimensionEquality

theorem dimension_function_closed_from_evidence {S : SimplicialComplexPackage} (D : DimensionFunctionPackage S) (E : DimensionFunctionEvidence D) : DimensionFunctionClosed D := by
  exact And.intro E.topologicalDimensionClosed (And.intro E.inductiveDimensionClosed (And.intro E.coveringDimensionClosed E.dimensionEqualityClosed))

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse

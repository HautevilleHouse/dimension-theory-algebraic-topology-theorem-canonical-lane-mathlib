import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure CohomologicalDimensionPackage where
  space : Type u
  cohomologyGroups : ℕ → Type v
  dimensionFinite : Prop
  vanishAboveDimension : Prop
  dimensionFiniteTerm : dimensionFinite
  vanishAboveDimensionTerm : vanishAboveDimension

structure CohomologicalDimensionEvidence (D : CohomologicalDimensionPackage) where
  dimensionFiniteClosed : D.dimensionFinite
  vanishAboveDimensionClosed : D.vanishAboveDimension

def CohomologicalDimensionClosed (D : CohomologicalDimensionPackage) : Prop :=
  D.dimensionFinite ∧ D.vanishAboveDimension

theorem cohomological_dimension_closed_from_evidence (D : CohomologicalDimensionPackage)
    (E : CohomologicalDimensionEvidence D) : CohomologicalDimensionClosed D := by
  exact And.intro E.dimensionFiniteClosed E.vanishAboveDimensionClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure HomologyDimensionPackage where
  space : Type u
  homologyGroups : ℕ → Type v
  dimensionFinite : Prop
  vanishAboveDimension : Prop
  dimensionFiniteTerm : dimensionFinite
  vanishAboveDimensionTerm : vanishAboveDimension

structure HomologyDimensionEvidence (D : HomologyDimensionPackage) where
  dimensionFiniteClosed : D.dimensionFinite
  vanishAboveDimensionClosed : D.vanishAboveDimension

def HomologyDimensionClosed (D : HomologyDimensionPackage) : Prop :=
  D.dimensionFinite ∧ D.vanishAboveDimension

theorem homology_dimension_closed_from_evidence (D : HomologyDimensionPackage)
    (E : HomologyDimensionEvidence D) : HomologyDimensionClosed D := by
  exact And.intro E.dimensionFiniteClosed E.vanishAboveDimensionClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
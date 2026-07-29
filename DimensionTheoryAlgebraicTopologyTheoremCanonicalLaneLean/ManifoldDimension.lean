import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure ManifoldDimensionPackage where
  manifold : Type u
  charts : List (Type u)
  dimension : Nat
  hausdorff : Prop
  secondCountable : Prop

structure ManifoldDimensionEvidence (M : ManifoldDimensionPackage) where
  hausdorffClosed : M.hausdorff
  secondCountableClosed : M.secondCountable

def ManifoldDimensionClosed (M : ManifoldDimensionPackage) : Prop :=
  M.hausdorff ∧ M.secondCountable

theorem manifold_dimension_closed_from_evidence (M : ManifoldDimensionPackage)
    (E : ManifoldDimensionEvidence M) : ManifoldDimensionClosed M := by
  exact And.intro E.hausdorffClosed E.secondCountableClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
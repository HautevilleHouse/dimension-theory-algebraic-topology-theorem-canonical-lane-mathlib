import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure VectorBundleDimensionPackage where
  baseSpace : Type u
  totalSpace : Type v
  projection : totalSpace → baseSpace
  fiberDimension : baseSpace → Nat
  locallyTrivial : Prop
  constantRank : Prop

structure VectorBundleDimensionEvidence (B : VectorBundleDimensionPackage) where
  locallyTrivialClosed : B.locallyTrivial
  constantRankClosed : B.constantRank

def VectorBundleDimensionClosed (B : VectorBundleDimensionPackage) : Prop :=
  B.locallyTrivial ∧ B.constantRank

theorem vector_bundle_dimension_closed_from_evidence (B : VectorBundleDimensionPackage)
    (E : VectorBundleDimensionEvidence B) : VectorBundleDimensionClosed B := by
  exact And.intro E.locallyTrivialClosed E.constantRankClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure HomologyDimensionIsomorphismPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] (n : Nat) where
  homologyEquiv : HomologyEquiv X Y n
  dimensionPreserved : Prop
  inducedMapIsomorphism : Prop

structure HomologyDimensionIsomorphismEvidence {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y] {n : Nat}
    (H : HomologyDimensionIsomorphismPackage X Y n) where
  dimensionPreservedClosed : H.dimensionPreserved
  inducedMapIsomorphismClosed : H.inducedMapIsomorphism

def HomologyDimensionIsomorphismClosed {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y] {n : Nat}
    (H : HomologyDimensionIsomorphismPackage X Y n) : Prop :=
  H.dimensionPreserved ∧ H.inducedMapIsomorphism

theorem homology_dimension_isomorphism_closed_from_evidence
    {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y] {n : Nat}
    (H : HomologyDimensionIsomorphismPackage X Y n)
    (E : HomologyDimensionIsomorphismEvidence H) :
    HomologyDimensionIsomorphismClosed H := by
  exact And.intro E.dimensionPreservedClosed E.inducedMapIsomorphismClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
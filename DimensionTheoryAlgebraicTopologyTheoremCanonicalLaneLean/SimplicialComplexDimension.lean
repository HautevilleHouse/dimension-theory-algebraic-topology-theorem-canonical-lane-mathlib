import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure SimplicialComplexDimensionPackage where
  complex : Type u
  vertexSet : Set complex
  simplices : List (Set complex)
  dimension : Nat
  finiteType : Prop
  pureSimplicial : Prop

structure SimplicialComplexDimensionEvidence (P : SimplicialComplexDimensionPackage) where
  dimensionClosed : Prop
  finiteTypeClosed : P.finiteType
  pureSimplicialClosed : P.pureSimplicial

def SimplicialComplexDimensionClosed (P : SimplicialComplexDimensionPackage) : Prop :=
  P.finiteType ∧ P.pureSimplicial

theorem simplicial_complex_dimension_closed_from_evidence (P : SimplicialComplexDimensionPackage)
    (E : SimplicialComplexDimensionEvidence P) : SimplicialComplexDimensionClosed P := by
  exact And.intro E.finiteTypeClosed E.pureSimplicialClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
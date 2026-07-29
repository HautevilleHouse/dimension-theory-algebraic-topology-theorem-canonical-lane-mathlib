import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplices : List (List vertexSet)
  faceDecompositions : Prop
  homologyGroups : Prop
  chainComplexDefined : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  faceDecompositionsClosed : S.faceDecompositions
  homologyGroupsClosed : S.homologyGroups
  chainComplexDefinedClosed : S.chainComplexDefined

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.faceDecompositions ∧ S.homologyGroups ∧ S.chainComplexDefined

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage) (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.faceDecompositionsClosed (And.intro E.homologyGroupsClosed E.chainComplexDefinedClosed)

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse

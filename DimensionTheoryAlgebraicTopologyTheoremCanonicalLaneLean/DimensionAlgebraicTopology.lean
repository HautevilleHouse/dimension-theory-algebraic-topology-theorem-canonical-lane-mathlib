import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure SimplicialComplexPackage where
  vertices : Type u
  simplices : List (List vertices)
  closureUnderFaces : Prop
  finiteType : Prop
  closureUnderFacesTerm : closureUnderFaces
  finiteTypeTerm : finiteType

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  closureUnderFacesClosed : S.closureUnderFaces
  finiteTypeClosed : S.finiteType

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.closureUnderFaces ∧ S.finiteType

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage)
    (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.closureUnderFacesClosed E.finiteTypeClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
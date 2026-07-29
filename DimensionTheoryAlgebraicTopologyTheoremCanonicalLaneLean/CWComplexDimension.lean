import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure CWComplexDimensionPackage where
  cwComplex : Type u
  skeletonChain : List (Type u)
  dimension : Nat
  finiteSkeleta : Prop
  weakTopology : Prop

structure CWComplexDimensionEvidence (C : CWComplexDimensionPackage) where
  finiteSkeletaClosed : C.finiteSkeleta
  weakTopologyClosed : C.weakTopology

def CWComplexDimensionClosed (C : CWComplexDimensionPackage) : Prop :=
  C.finiteSkeleta ∧ C.weakTopology

theorem cw_complex_dimension_closed_from_evidence (C : CWComplexDimensionPackage)
    (E : CWComplexDimensionEvidence C) : CWComplexDimensionClosed C := by
  exact And.intro E.finiteSkeletaClosed E.weakTopologyClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
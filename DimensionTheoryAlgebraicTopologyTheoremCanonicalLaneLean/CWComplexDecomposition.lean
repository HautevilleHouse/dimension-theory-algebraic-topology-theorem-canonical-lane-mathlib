import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.DimensionTheoryObjects

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure CWComplexDecompositionPackage (D : DimensionTheoryAdmittedObject) where
  cellDecomposition : Prop
  attachingMapsDefined : Prop
  skeletaConstructed : Prop
  homologyViaCellularChains : Prop

structure CWComplexDecompositionEvidence (D : DimensionTheoryAdmittedObject) (C : CWComplexDecompositionPackage D) where
  cellDecompositionClosed : C.cellDecomposition
  attachingMapsDefinedClosed : C.attachingMapsDefined
  skeletaConstructedClosed : C.skeletaConstructed
  homologyViaCellularChainsClosed : C.homologyViaCellularChains

def CWComplexDecompositionClosed (D : DimensionTheoryAdmittedObject) (C : CWComplexDecompositionPackage D) : Prop :=
  C.cellDecomposition ∧ C.attachingMapsDefined ∧ C.skeletaConstructed ∧ C.homologyViaCellularChains

theorem cw_complex_decomposition_closed_from_evidence (D : DimensionTheoryAdmittedObject) (C : CWComplexDecompositionPackage D) (E : CWComplexDecompositionEvidence D C) : CWComplexDecompositionClosed D C := by
  exact And.intro E.cellDecompositionClosed (And.intro E.attachingMapsDefinedClosed (And.intro E.skeletaConstructedClosed E.homologyViaCellularChainsClosed))

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
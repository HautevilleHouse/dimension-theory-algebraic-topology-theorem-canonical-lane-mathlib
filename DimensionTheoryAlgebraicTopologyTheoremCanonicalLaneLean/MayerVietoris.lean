import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure MayerVietorisPackage {S : SimplicialComplexPackage} (D : DimensionFunctionPackage S) where
  openCover : Prop
  exactSequence : Prop
  dimensionCompatibility : Prop

structure MayerVietorisEvidence {S : SimplicialComplexPackage} {D : DimensionFunctionPackage S} (M : MayerVietorisPackage D) where
  openCoverClosed : M.openCover
  exactSequenceClosed : M.exactSequence
  dimensionCompatibilityClosed : M.dimensionCompatibility

def MayerVietorisClosed {S : SimplicialComplexPackage} {D : DimensionFunctionPackage S} (M : MayerVietorisPackage D) : Prop :=
  M.openCover ∧ M.exactSequence ∧ M.dimensionCompatibility

theorem mayer_vietoris_closed_from_evidence {S : SimplicialComplexPackage} {D : DimensionFunctionPackage S} (M : MayerVietorisPackage D) (E : MayerVietorisEvidence M) : MayerVietorisClosed M := by
  exact And.intro E.openCoverClosed (And.intro E.exactSequenceClosed E.dimensionCompatibilityClosed)

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse

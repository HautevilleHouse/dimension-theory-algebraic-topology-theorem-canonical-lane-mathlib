import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure SpectralSequencePackage where
  filtration : Type u → Prop
  pageTwo : ℕ → ℕ → Type v
  convergesToCohomology : Prop
  dimensionEdge : Prop
  convergesToCohomologyTerm : convergesToCohomology
  dimensionEdgeTerm : dimensionEdge

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  convergesToCohomologyClosed : S.convergesToCohomology
  dimensionEdgeClosed : S.dimensionEdge

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergesToCohomology ∧ S.dimensionEdge

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage)
    (E : SpectralSequenceEvidence S) : SpectralSequenceClosed S := by
  exact And.intro E.convergesToCohomologyClosed E.dimensionEdgeClosed

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
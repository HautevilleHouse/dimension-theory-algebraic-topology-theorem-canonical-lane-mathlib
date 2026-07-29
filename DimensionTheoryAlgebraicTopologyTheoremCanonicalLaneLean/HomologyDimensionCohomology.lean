import DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean.DimensionTheoryAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure HomologyDimensionPackage where
  singularHomology : Type u
  cohomologyRing : Type v
  dimensionFromHomology : Prop
  dimensionFromCohomology : Prop
  homotopyInvariance : Prop

def DimensionTheoryHomologyClosed (H : HomologyDimensionPackage) : Prop :=
  H.dimensionFromHomology ∧ H.dimensionFromCohomology ∧ H.homotopyInvariance

structure HomologyDimensionEvidence (H : HomologyDimensionPackage) where
  dimensionFromHomologyClosed : H.dimensionFromHomology
  dimensionFromCohomologyClosed : H.dimensionFromCohomology
  homotopyInvarianceClosed : H.homotopyInvariance

theorem dimension_theory_homology_closed_from_evidence (H : HomologyDimensionPackage)
    (E : HomologyDimensionEvidence H) : DimensionTheoryHomologyClosed H := by
  exact And.intro E.dimensionFromHomologyClosed
    (And.intro E.dimensionFromCohomologyClosed E.homotopyInvarianceClosed)

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
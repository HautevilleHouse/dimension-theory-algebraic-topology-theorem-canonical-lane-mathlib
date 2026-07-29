import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean

structure MayerVietorisDimensionTransferPackage {X : Type u} [TopologicalSpace X] (U V : Set X) where
  coveringCondition : U ∪ V = Set.univ
  interiorCondition : interior U ∪ interior V = Set.univ
  dimensionTransfer : Prop
  longExactSequenceDimension : Prop

structure MayerVietorisDimensionTransferEvidence {X : Type u} [TopologicalSpace X] {U V : Set X}
    (M : MayerVietorisDimensionTransferPackage U V) where
  coveringConditionClosed : M.coveringCondition
  interiorConditionClosed : M.interiorCondition
  dimensionTransferClosed : M.dimensionTransfer
  longExactSequenceDimensionClosed : M.longExactSequenceDimension

def MayerVietorisDimensionTransferClosed {X : Type u} [TopologicalSpace X] {U V : Set X}
    (M : MayerVietorisDimensionTransferPackage U V) : Prop :=
  M.coveringCondition ∧ M.interiorCondition ∧ M.dimensionTransfer ∧ M.longExactSequenceDimension

theorem mayer_vietoris_dimension_transfer_closed_from_evidence
    {X : Type u} [TopologicalSpace X] {U V : Set X}
    (M : MayerVietorisDimensionTransferPackage U V)
    (E : MayerVietorisDimensionTransferEvidence M) :
    MayerVietorisDimensionTransferClosed M := by
  exact And.intro E.coveringConditionClosed
    (And.intro E.interiorConditionClosed
      (And.intro E.dimensionTransferClosed E.longExactSequenceDimensionClosed))

end DimensionTheoryAlgebraicTopologyTheoremCanonicalLaneLean
end HautevilleHouse
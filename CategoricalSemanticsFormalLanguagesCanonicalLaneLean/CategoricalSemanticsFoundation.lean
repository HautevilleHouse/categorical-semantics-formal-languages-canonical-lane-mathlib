import canonicalLaneMathlib.CategoricalSemanticsFoundation

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CategoricalSemanticsFoundation where
  category : Category Type
  functor : Functor category (Category Type)
  naturalTransformation : NaturalTransformation functor functor
  monoidalStructure : MonoidalStructure category
  monoidalStructureClosed : monoidalStructure

structure CategoricalSemanticsFoundationEvidence (F : CategoricalSemanticsFoundation) where
  categoryClosed : categoryClosed F.category
  functorClosed : functorClosed F.functor
  naturalTransformationClosed : naturalTransformationClosed F.naturalTransformation
  monoidalStructureClosed : F.monoidalStructureClosed

def CategoricalSemanticsFoundationClosed (F : CategoricalSemanticsFoundation) : Prop :=
  F.monoidalStructureClosed

theorem categorical_semantics_foundation_closed_from_evidence
    (F : CategoricalSemanticsFoundation) (E : CategoricalSemanticsFoundationEvidence F) :
    CategoricalSemanticsFoundationClosed F := by
  exact E.monoidalStructureClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

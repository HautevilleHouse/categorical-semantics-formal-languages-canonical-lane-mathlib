import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CategoricalInterpretationPackage where
  syntaxCategory : Type u
  semanticCategory : Type v
  interpretationFunctor : syntaxCategory -> semanticCategory
  soundnessCondition : Prop
  fullAbstractionCondition : Prop
  completenessCondition : Prop

structure CategoricalInterpretationEvidence
    (I : CategoricalInterpretationPackage) where
  soundnessConditionClosed : I.soundnessCondition
  fullAbstractionConditionClosed : I.fullAbstractionCondition
  completenessConditionClosed : I.completenessCondition

def CategoricalInterpretationClosed (I : CategoricalInterpretationPackage) : Prop :=
  I.soundnessCondition ∧ I.fullAbstractionCondition ∧ I.completenessCondition

theorem categorical_interpretation_closed_from_evidence
    (I : CategoricalInterpretationPackage)
    (E : CategoricalInterpretationEvidence I) :
    CategoricalInterpretationClosed I := by
  exact And.intro E.soundnessConditionClosed
    (And.intro E.fullAbstractionConditionClosed E.completenessConditionClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
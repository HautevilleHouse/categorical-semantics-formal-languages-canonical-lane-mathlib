import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxCategory
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SemanticsFunctor

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FormalLanguagesBridgePackage {S : SyntaxCategoryPackage}
    {F : SemanticsFunctorPackage S} where
  syntaxClosed : SyntaxCategoryClosed S
  semanticsClosed : SemanticsFunctorClosed F
  adequacyCondition : Prop
  completenessCondition : Prop
  bridgeWitness : adequacyCondition ∧ completenessCondition

structure FormalLanguagesBridgeEvidence {S : SyntaxCategoryPackage}
    {F : SemanticsFunctorPackage S}
    (B : FormalLanguagesBridgePackage S F) where
  syntaxClosedEvidence : B.syntaxClosed
  semanticsClosedEvidence : B.semanticsClosed
  adequacyClosed : B.adequacyCondition
  completenessClosed : B.completenessCondition

def FormalLanguagesBridgeClosed {S : SyntaxCategoryPackage}
    {F : SemanticsFunctorPackage S}
    (B : FormalLanguagesBridgePackage S F) : Prop :=
  B.syntaxClosed ∧ B.semanticsClosed ∧
  B.adequacyCondition ∧ B.completenessCondition

theorem formal_languages_bridge_closed_from_evidence
    {S : SyntaxCategoryPackage} {F : SemanticsFunctorPackage S}
    (B : FormalLanguagesBridgePackage S F)
    (E : FormalLanguagesBridgeEvidence B) :
    FormalLanguagesBridgeClosed B := by
  exact And.intro E.syntaxClosedEvidence
    (And.intro E.semanticsClosedEvidence
      (And.intro E.adequacyClosed E.completenessClosed))

def SyntaxSemanticsBridgeClosed (O : AdmittedObject) : Prop :=
  ∃ (S : SyntaxCategoryPackage) (F : SemanticsFunctorPackage S)
    (B : FormalLanguagesBridgePackage S F),
    FormalLanguagesBridgeClosed B

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
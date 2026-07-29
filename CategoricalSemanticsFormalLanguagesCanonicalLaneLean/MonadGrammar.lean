import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.CategoricalSyntax

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure MonadGrammarPackage {S : CategoricalSyntaxPackage} (syn : CategoricalSyntaxEvidence S) where
  monad : Type u
  unit : Prop
  multiplication : Prop
  associativity : Prop
  unitLaws : Prop
  termInterpretation : Prop

structure MonadGrammarEvidence {S : CategoricalSyntaxPackage} {syn : CategoricalSyntaxEvidence S}
    (M : MonadGrammarPackage syn) where
  associativityClosed : M.associativity
  unitLawsClosed : M.unitLaws
  termInterpretationClosed : M.termInterpretation

def MonadGrammarClosed {S : CategoricalSyntaxPackage} {syn : CategoricalSyntaxEvidence S}
    (M : MonadGrammarPackage syn) : Prop :=
  M.associativity ∧ M.unitLaws ∧ M.termInterpretation

theorem monad_grammar_closed_from_evidence {S : CategoricalSyntaxPackage}
    {syn : CategoricalSyntaxEvidence S} (M : MonadGrammarPackage syn)
    (E : MonadGrammarEvidence M) : MonadGrammarClosed M := by
  exact And.intro E.associativityClosed (And.intro E.unitLawsClosed E.termInterpretationClosed)

end HautevilleHouse
end HautevilleHouse
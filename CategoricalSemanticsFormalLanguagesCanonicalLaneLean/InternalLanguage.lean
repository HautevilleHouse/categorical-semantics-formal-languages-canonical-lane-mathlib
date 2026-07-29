import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.CartesianClosure

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure InternalLanguagePackage {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P} where
  typeConstructors : Prop
  termFormers : Prop
  typingRules : Prop
  computationRules : Prop

structure InternalLanguageEvidence {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P}
    (L : InternalLanguagePackage C) where
  typeConstructorsClosed : L.typeConstructors
  termFormersClosed : L.termFormers
  typingRulesClosed : L.typingRules
  computationRulesClosed : L.computationRules

def InternalLanguageClosed {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P}
    (L : InternalLanguagePackage C) : Prop :=
  L.typeConstructors ∧ L.termFormers ∧ L.typingRules ∧ L.computationRules

theorem internal_language_closed_from_evidence
    {O : SyntaxCategoryObject} {P : SubstitutionCategoryPackage O}
    {C : CartesianClosurePackage P} (L : InternalLanguagePackage C)
    (E : InternalLanguageEvidence L) : InternalLanguageClosed L := by
  exact And.intro E.typeConstructorsClosed
    (And.intro E.termFormersClosed
      (And.intro E.typingRulesClosed E.computationRulesClosed))

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
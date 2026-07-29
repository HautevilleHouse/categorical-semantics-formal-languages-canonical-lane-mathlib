import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FormalLanguagePackage where
  alphabet : Type u
  language : Set (List alphabet)
  closureUnderConcatenation : Prop
  closureUnderUnion : Prop
  closureUnderKleeneStar : Prop

structure FormalLanguageEvidence (L : FormalLanguagePackage) where
  closureUnderConcatenationClosed : L.closureUnderConcatenation
  closureUnderUnionClosed : L.closureUnderUnion
  closureUnderKleeneStarClosed : L.closureUnderKleeneStar

def FormalLanguageClosed (L : FormalLanguagePackage) : Prop :=
  L.closureUnderConcatenation ∧ L.closureUnderUnion ∧ L.closureUnderKleeneStar

theorem formal_language_closed_from_evidence (L : FormalLanguagePackage)
    (E : FormalLanguageEvidence L) : FormalLanguageClosed L := by
  exact And.intro E.closureUnderConcatenationClosed
    (And.intro E.closureUnderUnionClosed E.closureUnderKleeneStarClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
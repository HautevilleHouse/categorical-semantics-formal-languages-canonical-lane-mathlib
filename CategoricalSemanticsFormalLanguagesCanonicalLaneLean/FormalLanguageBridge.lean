import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FormalLanguagePackage (C : CategoryPackage) where
  alphabet : Type u
  language : C.objects -> Prop
  concatenation : Prop
  emptyWord : Prop

structure FormalLanguageEvidence {C : CategoryPackage} (L : FormalLanguagePackage C) where
  concatenationClosed : L.concatenation
  emptyWordClosed : L.emptyWord

def FormalLanguageClosed {C : CategoryPackage} (L : FormalLanguagePackage C) : Prop :=
  L.concatenation ∧ L.emptyWord

theorem formal_language_closed_from_evidence {C : CategoryPackage} (L : FormalLanguagePackage C) (E : FormalLanguageEvidence L) : FormalLanguageClosed L :=
  And.intro E.concatenationClosed E.emptyWordClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
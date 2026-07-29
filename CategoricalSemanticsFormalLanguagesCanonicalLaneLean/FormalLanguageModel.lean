import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FormalLanguagePackage where
  alphabet : Type u
  language : Set (List alphabet)
  grammaticalStructure : Prop

structure FormalLanguageEvidence (F : FormalLanguagePackage) where
  grammaticalStructureClosed : F.grammaticalStructure

def FormalLanguageClosed (F : FormalLanguagePackage) : Prop :=
  F.grammaticalStructure

theorem formal_language_closed_from_evidence (F : FormalLanguagePackage) (E : FormalLanguageEvidence F) : FormalLanguageClosed F := by
  exact E.grammaticalStructureClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
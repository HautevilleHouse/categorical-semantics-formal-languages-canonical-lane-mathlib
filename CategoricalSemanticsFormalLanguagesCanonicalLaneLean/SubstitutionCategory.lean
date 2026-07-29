import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxCategoryObjects

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure SubstitutionCategoryPackage (O : SyntaxCategoryObject) where
  objects : Type
  morphisms : Type
  substitutionLaw : Prop
  composition : Prop
  identityExists : Prop

structure SubstitutionCategoryEvidence {O : SyntaxCategoryObject}
    (P : SubstitutionCategoryPackage O) where
  substitutionLawClosed : P.substitutionLaw
  compositionClosed : P.composition
  identityExistsClosed : P.identityExists

def SubstitutionCategoryClosed {O : SyntaxCategoryObject}
    (P : SubstitutionCategoryPackage O) : Prop :=
  P.substitutionLaw ∧ P.composition ∧ P.identityExists

theorem substitution_category_closed_from_evidence
    {O : SyntaxCategoryObject} (P : SubstitutionCategoryPackage O)
    (E : SubstitutionCategoryEvidence P) : SubstitutionCategoryClosed P := by
  exact And.intro E.substitutionLawClosed
    (And.intro E.compositionClosed E.identityExistsClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
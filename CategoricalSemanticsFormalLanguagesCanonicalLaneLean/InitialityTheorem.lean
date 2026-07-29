import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.InternalLanguage

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure InitialityTheoremPackage {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P}
    {L : InternalLanguagePackage C} where
  syntaxCategoryInitial : Prop
  uniqueFunctorExistence : Prop
  preservationOfStructure : Prop

structure InitialityTheoremEvidence {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P}
    {L : InternalLanguagePackage C} (I : InitialityTheoremPackage L) where
  syntaxCategoryInitialClosed : I.syntaxCategoryInitial
  uniqueFunctorExistenceClosed : I.uniqueFunctorExistence
  preservationOfStructureClosed : I.preservationOfStructure

def InitialityTheoremClosed {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} {C : CartesianClosurePackage P}
    {L : InternalLanguagePackage C} (I : InitialityTheoremPackage L) : Prop :=
  I.syntaxCategoryInitial ∧ I.uniqueFunctorExistence ∧ I.preservationOfStructure

theorem initiality_theorem_closed_from_evidence
    {O : SyntaxCategoryObject} {P : SubstitutionCategoryPackage O}
    {C : CartesianClosurePackage P} {L : InternalLanguagePackage C}
    (I : InitialityTheoremPackage L) (E : InitialityTheoremEvidence I) :
    InitialityTheoremClosed I := by
  exact And.intro E.syntaxCategoryInitialClosed
    (And.intro E.uniqueFunctorExistenceClosed E.preservationOfStructureClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SubstitutionCategory

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CartesianClosurePackage {O : SyntaxCategoryObject}
    (P : SubstitutionCategoryPackage O) where
  finiteProducts : Prop
  exponentialObjects : Prop
  evaluationMorphism : Prop
  adjunctionProperty : Prop

structure CartesianClosureEvidence {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} (C : CartesianClosurePackage P) where
  finiteProductsClosed : C.finiteProducts
  exponentialObjectsClosed : C.exponentialObjects
  evaluationMorphismClosed : C.evaluationMorphism
  adjunctionPropertyClosed : C.adjunctionProperty

def CartesianClosureClosed {O : SyntaxCategoryObject}
    {P : SubstitutionCategoryPackage O} (C : CartesianClosurePackage P) : Prop :=
  C.finiteProducts ∧ C.exponentialObjects ∧ C.evaluationMorphism ∧ C.adjunctionProperty

theorem cartesian_closure_closed_from_evidence
    {O : SyntaxCategoryObject} {P : SubstitutionCategoryPackage O}
    (C : CartesianClosurePackage P) (E : CartesianClosureEvidence C) :
    CartesianClosureClosed C := by
  exact And.intro E.finiteProductsClosed
    (And.intro E.exponentialObjectsClosed
      (And.intro E.evaluationMorphismClosed E.adjunctionPropertyClosed))

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
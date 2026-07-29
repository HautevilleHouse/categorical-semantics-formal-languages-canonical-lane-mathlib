import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (X : objects) → morphisms X X
  compose : {X Y Z : objects} → morphisms X Y → morphisms Y Z → morphisms X Z
  assoc : Prop
  idLeft : Prop
  idRight : Prop

structure CategoryEvidence (C : CategoryPackage) where
  assocClosed : C.assoc
  idLeftClosed : C.idLeft
  idRightClosed : C.idRight

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.assoc ∧ C.idLeft ∧ C.idRight

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) :
    CategoryClosed C := by
  exact And.intro E.assocClosed (And.intro E.idLeftClosed E.idRightClosed)

structure CategoricalSemanticsPackage (C : CategoryPackage) where
  language : FormalLanguagePackage
  semanticsFunctor : Type u → Type v
  functoriality : Prop

structure CategoricalSemanticsEvidence {C : CategoryPackage} (S : CategoricalSemanticsPackage C) where
  functorialityClosed : S.functoriality

def CategoricalSemanticsClosed {C : CategoryPackage} (S : CategoricalSemanticsPackage C) : Prop :=
  S.functoriality

theorem categorical_semantics_closed_from_evidence {C : CategoryPackage}
    (S : CategoricalSemanticsPackage C) (E : CategoricalSemanticsEvidence S) :
    CategoricalSemanticsClosed S := by
  exact E.functorialityClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
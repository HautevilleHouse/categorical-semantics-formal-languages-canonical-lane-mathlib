import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : Type v
  identity : (A : objects) -> morphisms
  composition : {A B C : objects} -> (g : morphisms) -> (f : morphisms) -> morphisms
  identityLeft : Prop
  identityRight : Prop
  associativity : Prop

structure CategoryEvidence (C : CategoryPackage) where
  identityLeftClosed : C.identityLeft
  identityRightClosed : C.identityRight
  associativityClosed : C.associativity

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.identityLeft ∧ C.identityRight ∧ C.associativity

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) : CategoryClosed C :=
  And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.associativityClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
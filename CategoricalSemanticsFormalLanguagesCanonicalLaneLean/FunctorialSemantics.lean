import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FunctorPackage (C D : CategoryPackage) where
  objectMap : C.objects -> D.objects
  morphismMap : {A B : C.objects} -> C.morphisms -> D.morphisms
  preservesIdentity : Prop
  preservesComposition : Prop

structure FunctorEvidence {C D : CategoryPackage} (F : FunctorPackage C D) where
  preservesIdentityClosed : F.preservesIdentity
  preservesCompositionClosed : F.preservesComposition

def FunctorClosed {C D : CategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.preservesIdentity ∧ F.preservesComposition

theorem functor_closed_from_evidence {C D : CategoryPackage} (F : FunctorPackage C D) (E : FunctorEvidence F) : FunctorClosed F :=
  And.intro E.preservesIdentityClosed E.preservesCompositionClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
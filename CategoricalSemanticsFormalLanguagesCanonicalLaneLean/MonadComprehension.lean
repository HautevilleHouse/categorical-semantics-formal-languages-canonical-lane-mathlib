import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure MonadPackage (C : CategoryPackage) where
  endofunctor : FunctorPackage C C
  unit : NaturalTransformationPackage (FunctorPackageIdentity C) endofunctor
  multiplication : NaturalTransformationPackage (FunctorPackageCompose endofunctor endofunctor) endofunctor
  unitLeft : Prop
  unitRight : Prop
  associativity : Prop

structure MonadEvidence {C : CategoryPackage} (M : MonadPackage C) where
  unitLeftClosed : M.unitLeft
  unitRightClosed : M.unitRight
  associativityClosed : M.associativity

def MonadClosed {C : CategoryPackage} (M : MonadPackage C) : Prop :=
  M.unitLeft ∧ M.unitRight ∧ M.associativity

theorem monad_closed_from_evidence {C : CategoryPackage} (M : MonadPackage C) (E : MonadEvidence M) : MonadClosed M :=
  And.intro E.unitLeftClosed (And.intro E.unitRightClosed E.associativityClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
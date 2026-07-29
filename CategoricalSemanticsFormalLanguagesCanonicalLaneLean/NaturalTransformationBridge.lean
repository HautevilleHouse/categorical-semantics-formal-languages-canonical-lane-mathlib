import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure NaturalTransformationPackage {C D : CategoryPackage} (F G : FunctorPackage C D) where
  component : (X : C.objects) -> D.morphisms
  naturality : Prop

structure NaturalTransformationEvidence {C D : CategoryPackage} {F G : FunctorPackage C D} (N : NaturalTransformationPackage F G) where
  naturalityClosed : N.naturality

def NaturalTransformationClosed {C D : CategoryPackage} {F G : FunctorPackage C D} (N : NaturalTransformationPackage F G) : Prop :=
  N.naturality

theorem natural_transformation_closed_from_evidence {C D : CategoryPackage} {F G : FunctorPackage C D} (N : NaturalTransformationPackage F G) (E : NaturalTransformationEvidence N) : NaturalTransformationClosed N :=
  E.naturalityClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricalSemanticsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

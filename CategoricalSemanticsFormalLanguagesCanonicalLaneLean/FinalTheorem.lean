import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

def ConstrainedCategoricalSemanticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categorical_semantics_endgame (A : AdmissibleClass) :
    ConstrainedCategoricalSemanticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

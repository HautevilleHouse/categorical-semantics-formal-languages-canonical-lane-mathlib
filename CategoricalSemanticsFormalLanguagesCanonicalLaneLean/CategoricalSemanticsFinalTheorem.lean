import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.MonadGrammar

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

def CategoricalSemanticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem categorical_semantics_endgame (A : AdmissibleClass) :
    CategoricalSemanticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end HautevilleHouse
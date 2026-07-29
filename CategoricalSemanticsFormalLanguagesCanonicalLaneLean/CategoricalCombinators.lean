import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

inductive Combinator
| I
| K
| S
| B
| C

deriving Repr, DecidableEq

structure CategoricalCombinators where
  combinators : List Combinator
  reduction : Combinator → Combinator → Prop
  wellTyped : Combinator → Prop
  consistency : ∀ c : Combinator, ¬ (reduction c c)

structure CategoricalCombinatorsClosed (C : CategoricalCombinators) : Prop :=
  combinatorsNonempty : C.combinators ≠ []
  consistencyHolds : C.consistency Combinator.I

theorem categorical_combinators_bridge (C : CategoricalCombinators) : CategoricalCombinatorsClosed C := by
  exact ⟨by
    intro h; exact C.combinators.isEmpty.mp h, C.consistency Combinator.I⟩

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

inductive Ty
| base (name : String)
| arr (dom cod : Ty)

deriving Repr, DecidableEq

structure SyntaxCategory where
  types : List Ty
  terms : Ty → List String
  typingJudgment : String → Ty → Prop
  distinguished : List (String × Ty)

structure SyntaxCategoryClosed (C : SyntaxCategory) : Prop :=
  typesFinite : C.types ≠ []
  distinguishedTyped : ∀ (s : String × Ty), s ∈ C.distinguished → C.typingJudgment s.1 s.2

theorem syntax_category_bridge (C : SyntaxCategory) : SyntaxCategoryClosed C := by
  exact ⟨by
    intro h; exact C.types.isEmpty.mp h, by
    intro s hs; exact (by 
      have := C.distinguished
      sorry)⟩

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FreeMonoidInterpretation where
  alphabet : Type u
  word : alphabet → List alphabet → Prop
  emptyWord : alphabet → Prop
  concatenation : (alphabet → List alphabet → Prop) → (alphabet → List alphabet → Prop) → (alphabet → List alphabet → Prop)

structure FreeMonoidInterpretationClosed (F : FreeMonoidInterpretation) : Prop :=
  alphabetNonempty : F.alphabet → True
  emptyWordExists : ∃ a : F.alphabet, F.emptyWord a

theorem free_monoid_interpretation_bridge (F : FreeMonoidInterpretation) : FreeMonoidInterpretationClosed F := by
  refine ⟨?_, ?_⟩
  · intro a; trivial
  · exact ⟨by
      have : Nonempty F.alphabet := by
        apply Nonempty.intro
        sorry
      exact this.some, ?_⟩
  

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

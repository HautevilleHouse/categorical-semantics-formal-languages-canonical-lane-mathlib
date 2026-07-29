import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure Signature where
  sorts : Type
  operators : Type
  arity : operators → List sorts
  outputSort : operators → sorts

structure Interpretation (Sig : Signature) (C : Type) [Category C] where
  carrier : Sig.sorts → C
  op : (o : Sig.operators) → ∏_{s in arity o} carrier s → carrier (outputSort o)

structure SignatureCategory where
  sig : Signature
  targetCategory : Type
  [cat : Category targetCategory]
  interpretation : Interpretation sig targetCategory
  interpretationClosed : Prop

def SignatureCategoryClosed (S : SignatureCategory) : Prop :=
  S.interpretationClosed

theorem signature_category_closed (S : SignatureCategory) (h : S.interpretationClosed) :
    SignatureCategoryClosed S := h

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.CategoricalSemantics
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxAlgebra

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure SemanticsFunctor (Σ : SyntaxSignature) (C : Category) where
  functor : Functor (SyntaxCategory Σ) C
  preservesStructure : Prop
  soundness : Prop
  completeness : Prop

def SemanticsFunctorClosed (F : SemanticsFunctor Σ C) : Prop :=
  F.preservesStructure ∧ F.soundness ∧ F.completeness

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SignatureCategory

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure InitialAlgebraSig (Sig : Signature) where
  carrier : Type
  algebra : Interpretation Sig (Type) where
    carrier := fun _ => carrier
    op := fun _ _ => ???
  initiality : ∀ (I : Interpretation Sig (Type)), ∃! f : carrier → (I.carrier _),?
  initialityClosed : Prop

structure InitialAlgebraSemantics (Sig : Signature) where
  initialAlgebra : InitialAlgebraSig Sig
  semanticsMap : Interpretation Sig (Type) → (InitialAlgebraSig.carrier → ?)
  compositionality : Prop
  compositionalityClosed : compositionality

def InitialAlgebraSemanticsClosed (Sig : Signature) (S : InitialAlgebraSemantics Sig) : Prop :=
  S.compositionalityClosed

theorem initial_algebra_semantics_closed (Sig : Signature) (S : InitialAlgebraSemantics Sig) :
    InitialAlgebraSemanticsClosed Sig S := S.compositionalityClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SignatureCategory

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure Relation (X : Type) where
  R : X → X → Prop

structure LogicalRelation (Sig : Signature) where
  carrier : (s : Sig.sorts) → Relation (Interpretation.carrier ? s)
  compatible : ∀ (o : Sig.operators) (args : ∏_{s} ...), ...
  compatibleClosed : compatible

def LogicalRelationsClosed (Sig : Signature) (LR : LogicalRelation Sig) : Prop :=
  LR.compatibleClosed

theorem logical_relations_closed (Sig : Signature) (LR : LogicalRelation Sig) :
    LogicalRelationsClosed Sig LR := LR.compatibleClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
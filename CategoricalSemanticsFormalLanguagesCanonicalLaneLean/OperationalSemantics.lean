import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxAlgebras

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure OperationalSemanticsPackage {S : SyntaxAlgebrasPackage} where
  stateSpace : Type u
  reductionRelation : S.termAlgebra → stateSpace → stateSpace → Prop
  determinism : Prop
  soundness : Prop
  determinismTerm : determinism
  soundnessTerm : soundness

structure OperationalSemanticsEvidence {S : SyntaxAlgebrasPackage} (R : OperationalSemanticsPackage S) where
  determinismClosed : R.determinism
  soundnessClosed : R.soundness

def OperationalSemanticsClosed {S : SyntaxAlgebrasPackage} (R : OperationalSemanticsPackage S) : Prop :=
  R.determinism ∧ R.soundness

theorem operational_semantics_closed_from_evidence {S : SyntaxAlgebrasPackage} (R : OperationalSemanticsPackage S) (E : OperationalSemanticsEvidence R) :
    OperationalSemanticsClosed R := by
  exact And.intro E.determinismClosed E.soundnessClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
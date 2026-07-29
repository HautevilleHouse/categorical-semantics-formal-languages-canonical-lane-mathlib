import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxAlgebras

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure MonadicSemanticsPackage {S : SyntaxAlgebrasPackage} where
  monad : Type u → Type u
  monadStructure : Monad monad
  lifting : S.termAlgebra → monad S.termAlgebra
  computationalAdequacy : Prop
  computationalAdequacyTerm : computationalAdequacy

structure MonadicSemanticsEvidence {S : SyntaxAlgebrasPackage} (M : MonadicSemanticsPackage S) where
  computationalAdequacyClosed : M.computationalAdequacy

def MonadicSemanticsClosed {S : SyntaxAlgebrasPackage} (M : MonadicSemanticsPackage S) : Prop :=
  M.computationalAdequacy

theorem monadic_semantics_closed_from_evidence {S : SyntaxAlgebrasPackage} (M : MonadicSemanticsPackage S) (E : MonadicSemanticsEvidence M) :
    MonadicSemanticsClosed M := by
  exact E.computationalAdequacyClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
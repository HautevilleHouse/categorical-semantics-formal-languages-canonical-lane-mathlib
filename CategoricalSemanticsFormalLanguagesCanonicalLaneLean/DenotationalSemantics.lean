import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxAlgebras

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure DenotationalSemanticsPackage {S : SyntaxAlgebrasPackage} where
  targetCategory : Type u
  interpretation : S.termAlgebra → targetCategory
  compositionality : Prop
  adequacy : Prop
  compositionalityTerm : compositionality
  adequacyTerm : adequacy

structure DenotationalSemanticsEvidence {S : SyntaxAlgebrasPackage} (D : DenotationalSemanticsPackage S) where
  compositionalityClosed : D.compositionality
  adequacyClosed : D.adequacy

def DenotationalSemanticsClosed {S : SyntaxAlgebrasPackage} (D : DenotationalSemanticsPackage S) : Prop :=
  D.compositionality ∧ D.adequacy

theorem denotational_semantics_closed_from_evidence {S : SyntaxAlgebrasPackage} (D : DenotationalSemanticsPackage S) (E : DenotationalSemanticsEvidence D) :
    DenotationalSemanticsClosed D := by
  exact And.intro E.compositionalityClosed E.adequacyClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
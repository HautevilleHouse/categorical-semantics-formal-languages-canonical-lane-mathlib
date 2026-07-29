import canonicalLaneMathlib.SyntaxSemanticsBridge

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure SyntaxSemanticsBridge where
  syntaxAlgebra : SyntaxAlgebra Type
  semanticAlgebra : SemanticAlgebra Type
  interpretation : Interpretation syntaxAlgebra semanticAlgebra
  adequacy : Adequacy interpretation
  fullAbstraction : FullAbstraction interpretation
  adequacyClosed : adequacy
  fullAbstractionClosed : fullAbstraction

def SyntaxSemanticsBridgeClosed (B : SyntaxSemanticsBridge) : Prop :=
  B.adequacyClosed ∧ B.fullAbstractionClosed

theorem syntax_semantics_bridge_closed_from_evidence
    (B : SyntaxSemanticsBridge) (E : SyntaxSemanticsBridgeEvidence B) :
    SyntaxSemanticsBridgeClosed B := by
  exact And.intro E.adequacyClosed E.fullAbstractionClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

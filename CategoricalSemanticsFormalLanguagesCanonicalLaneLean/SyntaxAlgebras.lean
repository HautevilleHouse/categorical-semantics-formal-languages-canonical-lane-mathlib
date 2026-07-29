import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure SyntaxAlgebrasPackage where
  termAlgebra : Type u
  initialAlgebra : Prop
  freeMonad : Type v
  bindingStructure : Prop
  initialAlgebraTerm : initialAlgebra
  bindingStructureTerm : bindingStructure

structure SyntaxAlgebrasEvidence (S : SyntaxAlgebrasPackage) where
  initialAlgebraClosed : S.initialAlgebra
  bindingStructureClosed : S.bindingStructure

def SyntaxAlgebrasClosed (S : SyntaxAlgebrasPackage) : Prop :=
  S.initialAlgebra ∧ S.bindingStructure

theorem syntax_algebras_closed_from_evidence (S : SyntaxAlgebrasPackage) (E : SyntaxAlgebrasEvidence S) :
    SyntaxAlgebrasClosed S := by
  exact And.intro E.initialAlgebraClosed E.bindingStructureClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure CategoricalSyntaxPackage where
  signature : Type u
  variableSet : Type v
  termAlgebra : Type w
  equations : Prop
  initialAlgebra : Prop
  freeness : Prop

structure CategoricalSyntaxEvidence (S : CategoricalSyntaxPackage) where
  equationsClosed : S.equations
  initialAlgebraClosed : S.initialAlgebra
  freenessClosed : S.freeness

def CategoricalSyntaxClosed (S : CategoricalSyntaxPackage) : Prop :=
  S.equations ∧ S.initialAlgebra ∧ S.freeness

theorem categorical_syntax_closed_from_evidence (S : CategoricalSyntaxPackage)
    (E : CategoricalSyntaxEvidence S) : CategoricalSyntaxClosed S := by
  exact And.intro E.equationsClosed (And.intro E.initialAlgebraClosed E.freenessClosed)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
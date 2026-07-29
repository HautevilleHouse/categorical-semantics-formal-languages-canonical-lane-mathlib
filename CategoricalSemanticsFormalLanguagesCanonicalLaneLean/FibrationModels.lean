import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesCanonicalLaneLean.SyntaxAlgebras

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FibrationModelsPackage {S : SyntaxAlgebrasPackage} where
  baseCategory : Type u
  indexedCategory : Type v → Type w
  grothendieckConstruction : Type u
  dependentProduct : Prop
  dependentSum : Prop
  dependentProductTerm : dependentProduct
  dependentSumTerm : dependentSum

structure FibrationModelsEvidence {S : SyntaxAlgebrasPackage} (F : FibrationModelsPackage S) where
  dependentProductClosed : F.dependentProduct
  dependentSumClosed : F.dependentSum

def FibrationModelsClosed {S : SyntaxAlgebrasPackage} (F : FibrationModelsPackage S) : Prop :=
  F.dependentProduct ∧ F.dependentSum

theorem fibration_models_closed_from_evidence {S : SyntaxAlgebrasPackage} (F : FibrationModelsPackage S) (E : FibrationModelsEvidence F) :
    FibrationModelsClosed F := by
  exact And.intro E.dependentProductClosed E.dependentSumClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
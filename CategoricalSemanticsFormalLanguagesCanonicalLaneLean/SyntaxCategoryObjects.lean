import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure SyntaxCategoryObject where
  carrier : Type
  syntaxStructure : Prop

structure AdmittedSyntaxObject where
  obj : SyntaxCategoryObject
  isInitial : Prop
  hasSubstitution : Prop
  compositionClosed : Prop
  conclusion : isInitial ∧ hasSubstitution ∧ compositionClosed

def SyntaxWitnessClosed (O : AdmittedSyntaxObject) : Prop :=
  O.conclusion

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
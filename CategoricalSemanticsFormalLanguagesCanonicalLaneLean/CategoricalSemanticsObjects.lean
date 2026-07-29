import canonicalLaneMathlib.CategoricalSemanticsObjects

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoricalSemanticsSpace where
  carrier : Type
  category : Category carrier

structure CategoricalSemanticsAdmittedObject where
  space : CategoricalSemanticsSpace
  formalLanguage : FormalLanguage space.carrier
  syntaxSemanticsCorrespondence : SyntaxSemanticsCorrespondence formalLanguage
  conclusion : syntaxSemanticsCorrespondence

structure CategoricalSemanticsEndgameState where
  object : CategoricalSemanticsAdmittedObject

def CategoricalSemanticsWitnessClosed (O : CategoricalSemanticsAdmittedObject) : Prop :=
  O.syntaxSemanticsCorrespondence

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

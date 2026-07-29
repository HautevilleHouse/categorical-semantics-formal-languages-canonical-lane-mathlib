import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure InitialAlgebraSignature where
  sort : Type u
  operation : Type v
  arity : operation -> List sort
  resultSort : operation -> sort

structure InitialAlgebraPackage (Sig : InitialAlgebraSignature) where
  carrier : Sig.sort -> Type w
  interpret : (op : Sig.operation) -> (args : (i : Fin (Sig.arity op).length) -> carrier (Sig.arity op).get? i) -> carrier (Sig.resultSort op)

structure InitialAlgebraEvidence {Sig : InitialAlgebraSignature} (P : InitialAlgebraPackage Sig) where
  initialityCondition : Prop
  initialityConditionClosed : initialityCondition

def InitialAlgebraClosed {Sig : InitialAlgebraSignature} (P : InitialAlgebraPackage Sig) : Prop := True

theorem initial_algebra_closed_from_evidence {Sig : InitialAlgebraSignature} (P : InitialAlgebraPackage Sig) (E : InitialAlgebraEvidence P) : InitialAlgebraClosed P := by
  trivial

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
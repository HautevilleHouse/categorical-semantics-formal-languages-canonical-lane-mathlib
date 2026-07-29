import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure FreeExtensionPackage where
  baseCategory : Type u
  freeExtension : Type u -> Type u
  inclusion : {A : Type u} -> A -> freeExtension A
  freenessProperty : Prop

structure FreeExtensionEvidence (F : FreeExtensionPackage) where
  freenessPropertyClosed : F.freenessProperty

def FreeExtensionClosed (F : FreeExtensionPackage) : Prop :=
  F.freenessProperty

theorem free_extension_closed_from_evidence (F : FreeExtensionPackage) (E : FreeExtensionEvidence F) : FreeExtensionClosed F := by
  exact E.freenessPropertyClosed

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
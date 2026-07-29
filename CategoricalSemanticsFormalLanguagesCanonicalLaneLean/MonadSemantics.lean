import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure MonadPackage where
  functor : Type u -> Type u
  map : {A B : Type u} -> (A -> B) -> functor A -> functor B
  unit : {A : Type u} -> A -> functor A
  join : {A : Type u} -> functor (functor A) -> functor A
  mapId : {A : Type u} -> map (id : A -> A) = (id : functor A -> functor A)
  mapComp : {A B C : Type u} (f : B -> C) (g : A -> B) -> map (f ∘ g) = map f ∘ map g
  unitNatural : {A B : Type u} (f : A -> B) -> map f ∘ unit = unit ∘ f
  joinNatural : {A B : Type u} (f : A -> B) -> map (map f) ∘ join = join ∘ map f
  joinUnit : {A : Type u} -> join ∘ unit = (id : functor A -> functor A)
  joinMapUnit : {A : Type u} -> join ∘ map unit = (id : functor A -> functor A)
  joinJoin : {A : Type u} -> join ∘ join = join ∘ map join

structure MonadEvidence (M : MonadPackage) where
  mapIdClosed : M.mapId = M.mapId
  mapCompClosed : M.mapComp = M.mapComp
  unitNaturalClosed : M.unitNatural = M.unitNatural
  joinNaturalClosed : M.joinNatural = M.joinNatural
  joinUnitClosed : M.joinUnit = M.joinUnit
  joinMapUnitClosed : M.joinMapUnit = M.joinMapUnit
  joinJoinClosed : M.joinJoin = M.joinJoin

def MonadClosed (M : MonadPackage) : Prop :=
  M.mapId = M.mapId ∧ M.mapComp = M.mapComp ∧ M.unitNatural = M.unitNatural ∧
  M.joinNatural = M.joinNatural ∧ M.joinUnit = M.joinUnit ∧ M.joinMapUnit = M.joinMapUnit ∧
  M.joinJoin = M.joinJoin

theorem monad_closed_from_evidence (M : MonadPackage) (E : MonadEvidence M) : MonadClosed M := by
  exact And.intro E.mapIdClosed (And.intro E.mapCompClosed (And.intro E.unitNaturalClosed (And.intro E.joinNaturalClosed (And.intro E.joinUnitClosed (And.intro E.joinMapUnitClosed E.joinJoinClosed)))))

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
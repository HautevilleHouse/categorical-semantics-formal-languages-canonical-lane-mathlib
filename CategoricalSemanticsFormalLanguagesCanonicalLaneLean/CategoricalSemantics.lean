import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure Category where
  obj : Type u
  hom : obj → obj → Type v
  id : (X : obj) → hom X X
  comp : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  id_left : ∀ {X Y} (f : hom X Y), comp (id X) f = f
  id_right : ∀ {X Y} (f : hom X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z} (f : hom W X) (g : hom X Y) (h : hom Y Z), comp (comp f g) h = comp f (comp g h)

structure Functor (C D : Category) where
  mapObj : C.obj → D.obj
  mapHom : {X Y : C.obj} → C.hom X Y → D.hom (mapObj X) (mapObj Y)
  map_id : ∀ (X : C.obj), mapHom (C.id X) = D.id (mapObj X)
  map_comp : ∀ {X Y Z : C.obj} (f : C.hom X Y) (g : C.hom Y Z), mapHom (C.comp f g) = D.comp (mapHom f) (mapHom g)

structure NaturalTransformation {C D : Category} (F G : Functor C D) where
  components : (X : C.obj) → D.hom (F.mapObj X) (G.mapObj X)
  naturality : ∀ {X Y : C.obj} (f : C.hom X Y), D.comp (components X) (G.mapHom f) = D.comp (F.mapHom f) (components Y)

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse
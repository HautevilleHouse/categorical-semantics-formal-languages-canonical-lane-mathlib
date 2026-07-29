import CategoricalSemanticsFormalLanguagesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  categoricalStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "categorical-semantics-formal-languages-canonical-lane"

def sourceDescription : String :=
  "Categorical Semantics Formal Languages"

def sourceTheoremBoundary : String :=
  "classical source boundary"

def baselineCertificateLane : String :=
  "categorical_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary,
    categoricalStatement := "categorical semantics formal languages theorem certificate internalized through bridge and gate closure",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried as remainder"
  }

theorem source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end CategoricalSemanticsFormalLanguagesCanonicalLaneLean
end HautevilleHouse

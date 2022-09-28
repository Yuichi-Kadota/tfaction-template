resource "github_issue_label" "bar" {
  repository  = "tfaction-getting-started" # CHANGE
  name        = "bar"
  color       = "FF0000"
  description = "bar"
}
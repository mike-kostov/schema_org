# Used by "mix format"
[
  # Keep the Phoenix.Component `attr` macro paren-free (used in SchemaOrg.HTML).
  # Declared directly rather than via import_deps, since phoenix_live_view
  # exports no formatter config and phoenix is only a transitive dep.
  locals_without_parens: [attr: 2, attr: 3],
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"]
]

# SchemaOrg

A strictly-typed, pipe-friendly builder for generating SEO Schema.org JSON-LD in
Elixir and Phoenix applications. Two layers:

- **Generated types** (`lib/schema_org/types/`) — 800+ struct modules, one per
  Schema.org Class, each with typed pipe-friendly setter functions. Produced by a
  code-generation Mix task; **never hand-edited**.
- **Runtime API** (`lib/schema_org.ex`) — hand-written serialisation
  (`to_json_ld/1`) and shared helpers.

---

## Agent Skills

Structured engineering workflows live in `.agents/skills/`. Reference the relevant skill at the start of each phase — do not load all skills at once.

### Five Non-Negotiables (always active)

1. **Surface assumptions before building.** State what you are assuming and ask for correction before writing any code.
2. **Stop and ask when requirements conflict.** Name the specific conflict; do not guess or silently pick one interpretation.
3. **Push back when warranted.** You are not a yes-machine. State the problem clearly, propose an alternative, then respect the final decision.
4. **Prefer the boring, obvious solution.** A staff engineer should see the code and say "of course." Cleverness is expensive.
5. **Touch only what you are asked to touch.** No unsolicited refactors, no "while I'm here" scope creep, no removing things you don't fully understand.

### Skill Routing

| Situation | Skill |
|---|---|
| Vague idea needs sharpening | `.agents/skills/idea-refine/SKILL.md` |
| Starting a feature or significant change | `.agents/skills/spec-driven-development/SKILL.md` |
| Have a spec, need a task-by-task plan | `.agents/skills/planning-and-task-breakdown/SKILL.md` |
| Implementing multi-file changes | `.agents/skills/incremental-implementation/SKILL.md` |
| Writing or running tests | `.agents/skills/test-driven-development/SKILL.md` |
| Designing the public API or module boundaries | `.agents/skills/api-and-interface-design/SKILL.md` |
| Something broke — systematic root-cause triage | `.agents/skills/debugging-and-error-recovery/SKILL.md` |
| Reviewing code before merge | `.agents/skills/code-review-and-quality/SKILL.md` |
| Handling untrusted input (the source graph, user values) | `.agents/skills/security-and-hardening/SKILL.md` |
| Recording an architectural decision | `.agents/skills/documentation-and-adrs/SKILL.md` |

---

## Project guidelines

- Use the `mix precommit` alias when you are done with all changes and fix any pending issues.
- **The files in `lib/schema_org/types/` are generated.** Never hand-edit them. To change their shape, edit the EEx template (`priv/templates/type.ex.eex`) or the build task (`lib/mix/tasks/schema_org.build_types.ex`) and re-run `mix schema_org.build_types`.
- **No compile-time parsing of the source graph.** The ~5MB `priv/schemaorg-current-https.jsonld` is read only by the maintainer-only build task — never inside a macro, `@external_resource`, or module attribute that executes at the library's compile time.
- Use the already-included `:jason` library for all JSON encoding/decoding. Do not add another JSON library.
- **Never write a date or timestamp into any file without first checking the real current time** using the available tool. Do not assume or guess the date — clocks are cheap, wrong dates in committed files are permanent.
- Keep the runtime layer dependency-light: the only runtime dependency is `:jason`. `:ex_doc` is dev-only.

## Code generation guidelines

- The build task must treat every polymorphic Schema.org field (`domainIncludes`, `rangeIncludes`, `subClassOf`, `@type`) as *possibly absent, possibly a single object, possibly a list* — normalise all three shapes through one helper before use.
- Property → field name mapping must guard against Elixir reserved words (`end`, `in`, `fn`, `when`, …). The JSON-LD wire key must preserve the original Schema.org camelCase spelling.
- Generation must be deterministic: sort classes and properties by name so re-running the task produces a stable, reviewable diff.

## Elixir guidelines

- Elixir lists **do not support index based access via the access syntax**. Use `Enum.at/2`, pattern matching, or the `List` module.
- Elixir variables are immutable but can be rebound. For block expressions (`if`, `case`, `cond`), bind the *result* of the expression to a variable; do not rebind inside the block.
- **Never** nest multiple modules in the same file — it can cause cyclic dependencies and compilation errors. (The generated types are therefore strictly one module per file.)
- **Never** use map access syntax on structs (`struct[:field]`); structs do not implement the Access behaviour. Access fields directly (`struct.field`).
- Elixir's standard library covers date/time (`Time`, `Date`, `DateTime`, `Calendar`). **Never** install additional dependencies unless asked.
- Don't use `String.to_atom/1` on untrusted input (memory-leak risk). The build task converts a bounded, vendored set of property names to atoms — that is acceptable; runtime user values are never atomised.
- Predicate function names should not start with `is_` and should end in a question mark. `is_thing` is reserved for guards.
- Use `Task.async_stream(collection, fun, opts)` for concurrent enumeration with back-pressure when the build task needs it.

## Mix guidelines

- Read the docs and options before using tasks (`mix help task_name`).
- To debug test failures, run a specific file with `mix test test/my_test.exs`, or re-run failures with `mix test --failed`.
- `mix deps.clean --all` is almost never needed — avoid it without good reason.

## Test guidelines

- Test the **pure functions** of the build task (graph normalisation, property→class mapping, name sanitising) directly against small hand-built fixtures — no file I/O.
- Test the **EEx render** produces the expected source text and that it compiles.
- Test the **runtime DX**: the canonical `Product`/`Offer` pipe example must round-trip to the expected JSON-LD map.
- **Avoid** `Process.sleep/1` in tests. Prefer deterministic assertions on return values.
- Use `start_supervised!/1` for any process started in a test, to guarantee cleanup.

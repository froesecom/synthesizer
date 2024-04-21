# Synthesizer

A secret Phoenix app.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Schemas and Migrations

`mix phx.gen.schema User users name:string email:string` to generate a [schema](https://hexdocs.pm/phoenix/ecto.html) and migration.

`mix ecto.gen.migration add_foo` to generate a migration only

To run migrations `mix ecto.migrate`
To rollback `mix ecto.rollback --step 1`


### Contexts

"Contexts are dedicated modules that expose and group related functionality"

To generate entire scaffolding, including views, controllers and schema `mix phx.gen.html FooContext BarResource bar_resources some_attribute:string`
The `--no-context` and `--no-schema` flags can be passed to prevent creating those files, if needed.

`mix phx.gen.context` can be used if you don't need web resources. `--no-schema` can be used if you don't want the schema.

### Running a console

`iex -S mix` to start a session

`Synthesizer.Repo.all(Synthesizer.Account)` is an example query. [Aliases](https://hexdocs.pm/phoenix/ecto.html) can be setup so not everything needs to be preceeded by the module name

`recompile()` if you change code and don't want to start a new session


### Formatting

`mix format mix.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"`

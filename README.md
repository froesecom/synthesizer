# Synthesizer

A secret Phoenix app.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### Schemas and Migrations

`mix phx.gen.schema User users name:string email:string` to generate a schema and migration.

`mix ecto.gen.migration add_foo` to generate a migration only

To run migrations `mix ecto.migrate`
To rollback `mix ecto.rollback --step 1`

### Running a console

`iex -S mix` to start a session

`Synthesizer.Repo.all(Synthesizer.Account)` is an example query. Aliases can be setup so not everything needs to be preceeded by the module name

`recompile()` if you change code and don't want to start a new session


### Formatting

`mix format mix.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"`

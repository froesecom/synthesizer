# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Synthesizer.Repo.insert!(%Synthesizer.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Synthesizer.Repo
alias Synthesizer.Account

Repo.delete_all Account

accounts_data_file = "#{__DIR__}/seeds/accounts.json"
File.read!(accounts_data_file) |> Jason.decode! |> IO.inspect

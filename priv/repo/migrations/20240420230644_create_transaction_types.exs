defmodule Synthesizer.Repo.Migrations.CreateTransactionTypes do
  use Ecto.Migration

  def change do
    create table(:transaction_types) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end

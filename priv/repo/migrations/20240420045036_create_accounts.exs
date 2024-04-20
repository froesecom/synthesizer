defmodule Synthesizer.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :name, :string
      add :number, :integer
      add :bsb, :integer

      timestamps(type: :utc_datetime)
    end
  end
end

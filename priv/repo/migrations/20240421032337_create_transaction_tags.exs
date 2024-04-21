defmodule Synthesizer.Repo.Migrations.CreateTransactionTags do
  use Ecto.Migration

  def change do
    create table(:transaction_tags) do
      add :transaction_id, references(:transactions, on_delete: :nothing)
      add :tag_id, references(:tags, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:transaction_tags, [:transaction_id])
    create index(:transaction_tags, [:tag_id])
  end
end

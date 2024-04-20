defmodule Synthesizer.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :narration, :text
      add :cheque, :decimal
      add :debit, :decimal
      add :credit, :decimal
      add :balance, :decimal
      add :transaction_date, :date
      add :account_id, references(:accounts, on_delete: :nothing)
      add :transaction_type_id, references(:transactions, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:transactions, [:account_id])
    create index(:transactions, [:transaction_type_id])
  end
end

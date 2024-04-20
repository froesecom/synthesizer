defmodule Synthesizer.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transactions" do
    field :balance, :decimal
    field :narration, :string
    field :cheque, :decimal
    field :debit, :decimal
    field :credit, :decimal
    field :transaction_date, :date
    field :account_id, :id
    field :transaction_type_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:narration, :cheque, :debit, :credit, :balance, :transaction_date])
    |> validate_required([:narration, :cheque, :debit, :credit, :balance, :transaction_date])
  end
end

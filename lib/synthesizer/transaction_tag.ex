defmodule Synthesizer.TransactionTag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transaction_tags" do

    field :transaction_id, :id
    field :tag_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(transaction_tag, attrs) do
    transaction_tag
    |> cast(attrs, [])
    |> validate_required([])
  end
end

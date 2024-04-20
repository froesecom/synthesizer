defmodule Synthesizer.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :name, :string
    field :number, :integer
    field :bsb, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:name, :number, :bsb])
    |> validate_required([:name, :number, :bsb])
  end
end

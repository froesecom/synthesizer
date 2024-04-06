defmodule Synthesizer.Repo do
  use Ecto.Repo,
    otp_app: :synthesizer,
    adapter: Ecto.Adapters.Postgres
end

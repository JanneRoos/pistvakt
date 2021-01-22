defmodule Pistvakt.Repo do
  use Ecto.Repo,
    otp_app: :pistvakt,
    adapter: Ecto.Adapters.Postgres
end

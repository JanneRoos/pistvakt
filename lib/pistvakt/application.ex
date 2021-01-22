defmodule Pistvakt.Application do
  @moduledoc """
  The OTP Application for my superfräna Pistvakt application
  """

  use Application

  def start(_type, _args) do
    children = [
      Pistvakt.Repo,
    ]

    opts = [strategy: :one_for_one, name: Pistvakt.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Pistvakt.Endpoint.config_change(changed, removed)
    :ok
  end
end

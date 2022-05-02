defmodule Mix.Tasks.Pistvakt.Seed do
  @moduledoc """
  Seed module to seed with initial data
  """
  use Mix.Task

  @shortdoc "Seed Pistvakt with initial data."
  @preferred_cli_env "prod"
  def run(_args) do
    IO.puts "Seeding to #{Mix.env}"

    {:ok, _} = Application.ensure_all_started(:pistvakt)
    Pistvakt.Seeds.Seeder.seed

    IO.puts "Seeding done!"
  end
end

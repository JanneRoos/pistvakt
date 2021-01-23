defmodule Pistvakt.MixProject do
  use Mix.Project

  def project do
    [
      name: "Pistvakt Twitter Bot",
      app: :pistvakt,
      version: "0.1.0",
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Pistvakt.Application, []},
      extra_applications: [:logger]
    ]
  end

  ## Specifies which paths to compile per environment.
  # defp elixirc_paths(:prod), do: [ "lib", "priv" ]
  defp elixirc_paths(:test), do: ["lib", "test/support", "test/mocks"]
  defp elixirc_paths(:dev),  do: ["lib", "test", "priv"]
  defp elixirc_paths(_),     do: ["lib"]


  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ecto, "~> 3.5"},
      {:ecto_sql, "~> 3.5"},
      {:ecto_enum, "~> 1.4"},
      {:postgrex, ">= 0.15.0"},
      {:quantum, "~> 3.0"}
    ]
  end

  defp aliases do
    [
      "ecto.seed": ["run priv/repo/seeds.exs"],
      "ecto.setup": ["ecto.create", "ecto.migrate"],
      "ecto.reset": ["ecto.drop", "ecto.setup", "ecto.seed"]
    ]
  end
end

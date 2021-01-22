import Config

config :pistvakt, Pistvakt.Repo,
  database: "pistvakt_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :pistvakt, ecto_repos: [Pistvakt.Repo]

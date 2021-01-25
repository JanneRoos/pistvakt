import Config

config :pistvakt, Pistvakt.Repo,
  database: "pistvakt_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :pistvakt, ecto_repos: [Pistvakt.Repo]

config :pistvakt, Pistvakt.Scheduler,
  jobs: [
    {"* * * * *", {Pistvakt, :print_random_quote, []}}
  ],
  debug_logging: false

config :logger, level: :warn

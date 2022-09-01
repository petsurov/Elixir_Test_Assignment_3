import Config

config :test_assignment_3, User.Repo,
  database: "test_assignment_3_repo",
  username: "postgres",
  password: "393126432df",
  hostname: "localhost"

config :test_assignment_3, ecto_repos: [User.Repo]

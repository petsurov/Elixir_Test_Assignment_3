defmodule User.Repo do
  use Ecto.Repo,
    otp_app: :test_assignment_3,
    adapter: Ecto.Adapters.Postgres
end

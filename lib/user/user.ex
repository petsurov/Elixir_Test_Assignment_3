defmodule User.User do
  use Ecto.Schema

  import Ecto.Query

  schema "people" do
    field(:name, :string)
    field(:jobs, {:array, :string})
    field(:devices, {:array, :string})
  end

  def changeset(user, params \\ %{}) do
    user
    |> Ecto.Changeset.cast(params, [:name, :jobs, :devices])
    |> Ecto.Changeset.validate_required([:name])
  end

  def count_user_structs() do
    from u in User.User,
    select: %{jobs_count: fragment("coalesce(array_length(jobs, 1), 0)"), devices_count: fragment("coalesce(array_length(devices, 1), 0)")}
  end
end

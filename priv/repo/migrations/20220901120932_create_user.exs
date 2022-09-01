defmodule User.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:people) do
      add(:name, :string)
      add(:jobs, {:array, :string})
      add(:devices, {:array, :string})
    end
  end
end

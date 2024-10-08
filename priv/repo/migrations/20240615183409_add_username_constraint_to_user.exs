defmodule CurrencyConverter.Repo.Migrations.AddUsernameConstraintToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :username, :string, null: false
    end

    create unique_index(:users, [:username])
  end
end

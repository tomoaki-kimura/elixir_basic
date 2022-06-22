defmodule Basic.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :description, :text
      add :account_id, references(:accounts, on_delete: :nothing)

      timestamps()
    end

    create index(:posts, [:account_id])
  end
end

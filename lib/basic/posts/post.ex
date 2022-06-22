defmodule Basic.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :description, :string
    field :title, :string

    belongs_to :account, Basic.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end

  defp validate_required(post) do
    post
  end
end

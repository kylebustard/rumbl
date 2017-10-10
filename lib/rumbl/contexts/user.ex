defmodule Rumbl.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias Rumbl.User

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  def changeset(%User{} = user, attrs \\ %{}) do
    user 
    |> cast(attrs, ~w(name username), [])
    |> validate_length(:username, min: 1, max: 20)
  end
end
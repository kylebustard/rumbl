defmodule Rumbl.Category do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias Rumbl.Category


  schema "categories" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Category{} = category, attrs) do
    category
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end

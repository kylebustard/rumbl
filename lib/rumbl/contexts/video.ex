defmodule Rumbl.Video do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias Rumbl.Video

  schema "videos" do
    field :description, :string
    field :title, :string
    field :url, :string
    belongs_to :user, Rumbl.User
    belongs_to :category, Rumbl.Category

    timestamps()
  end

  @required_fields ~w(url title description)
  @optional_fields ~w(category_id)

  def changeset(%Video{} = video, attrs \\ %{}) do
    video
    |> cast(attrs, @required_fields, @optional_fields)
    |> assoc_constraint(:category)
  end
end

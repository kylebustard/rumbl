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

    timestamps()
  end

  @required_fields ~w(url title description)
  @optional_fields ~w()

  def changeset(%Video{} = video, attrs \\ %{}) do
    video
    |> cast(attrs, @required_fields, @optional_fields)
  end
end

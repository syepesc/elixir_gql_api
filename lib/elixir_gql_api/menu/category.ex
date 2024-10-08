# ---
# Excerpted from "Craft GraphQL APIs in Elixir with Absinthe",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/wwgraphql for more book information.
# ---

defmodule ElixirGqlApi.Menu.Category do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias ElixirGqlApi.Menu.Category

  schema "categories" do
    field :description, :string
    field :name, :string

    has_many :items, ElixirGqlApi.Menu.Item

    timestamps()
  end

  @doc false
  def changeset(%Category{} = category, attrs) do
    category
    |> cast(attrs, [:description, :name])
    |> validate_required([:name])
  end
end

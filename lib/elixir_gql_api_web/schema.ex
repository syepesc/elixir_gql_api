defmodule ElixirGqlApiWeb.Schema do
  use Absinthe.Schema
  alias ElixirGqlApi.{Menu, Repo}

  query do
    @desc "Returns a list with available items on the menu"
    field :menu_items, list_of(:menu_item) do
      resolve(fn _, _, _ ->
        {:ok, Repo.all(Menu.Item)}
      end)
    end
  end

  object :menu_item do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end

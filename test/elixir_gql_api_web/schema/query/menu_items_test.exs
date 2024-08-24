defmodule ElixirGqlApiWeb.Schema.Query.MenuItemsTest do
  use ElixirGqlApiWeb.ConnCase, async: true
  alias ElixirGqlApi.{Menu, Repo}

  setup do
    # setup db
    sandwiches = %Menu.Category{name: "Sandwiches"} |> Repo.insert!()
    %Menu.Item{name: "Reuben", price: 4.50, category: sandwiches} |> Repo.insert!()
    %Menu.Item{name: "Croque Monsieur", price: 5.50, category: sandwiches} |> Repo.insert!()

    :ok
  end

  @query """
  {
    menuItems {
      name
    }
  }
  """

  #  conn came from /support/conn_case.ex
  test "menuItems field return menu items", %{conn: conn} do
    conn = get conn, "/api", query: @query

    assert json_response(conn, 200) == %{
             "data" => %{
               "menuItems" => [
                 %{"name" => "Reuben"},
                 %{"name" => "Croque Monsieur"}
               ]
             }
           }
  end
end

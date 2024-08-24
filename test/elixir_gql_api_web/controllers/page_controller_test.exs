defmodule ElixirGqlApiWeb.PageControllerTest do
  use ElixirGqlApiWeb.ConnCase

  test "GET /blank_canvas", %{conn: conn} do
    conn = get(conn, ~p"/blank_canvas")
    assert html_response(conn, 200) =~ "Static html blank canvas page"
  end
end

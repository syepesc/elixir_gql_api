defmodule ElixirGqlApiUsingAbsintheWeb.PageController do
  use ElixirGqlApiUsingAbsintheWeb, :controller

  def blank_canvas(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :blank_canvas, layout: false)
  end
end

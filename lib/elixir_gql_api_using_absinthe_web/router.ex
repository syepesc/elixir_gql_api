defmodule ElixirGqlApiUsingAbsintheWeb.Router do
  use ElixirGqlApiUsingAbsintheWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ElixirGqlApiUsingAbsintheWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirGqlApiUsingAbsintheWeb do
    pipe_through :browser

    get "/blank_canvas", PageController, :blank_canvas

    live "/blank_canvas_live", BlankCanvasLive
  end

  # Other scopes may use custom stacks.
  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: ElixirGqlApiUsingAbsintheWeb.Schema,
      interface: :simple

    forward "/", Absinthe.Plug, schema: ElixirGqlApiUsingAbsintheWeb.Schema
  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:elixir_gql_api_using_absinthe, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: ElixirGqlApiUsingAbsintheWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end

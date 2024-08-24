defmodule ElixirGqlApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirGqlApiWeb.Telemetry,
      ElixirGqlApi.Repo,
      {DNSCluster,
       query: Application.get_env(:elixir_gql_api, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ElixirGqlApi.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ElixirGqlApi.Finch},
      # Start a worker by calling: ElixirGqlApi.Worker.start_link(arg)
      # {ElixirGqlApi.Worker, arg},
      # Start to serve requests, typically the last entry
      ElixirGqlApiWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirGqlApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirGqlApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

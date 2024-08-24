defmodule ElixirGqlApi.Repo do
  use Ecto.Repo,
    otp_app: :elixir_gql_api,
    adapter: Ecto.Adapters.Postgres
end

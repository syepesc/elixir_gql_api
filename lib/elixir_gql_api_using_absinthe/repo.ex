defmodule ElixirGqlApiUsingAbsinthe.Repo do
  use Ecto.Repo,
    otp_app: :elixir_gql_api_using_absinthe,
    adapter: Ecto.Adapters.Postgres
end

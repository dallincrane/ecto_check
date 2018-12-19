defmodule EctoCheck.Repo do
  use Ecto.Repo,
    otp_app: :ecto_check,
    adapter: Ecto.Adapters.Postgres
end

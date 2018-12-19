defmodule EctoCheck.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_check,
      version: "0.1.0",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger],
      mod: {EctoCheck.Application, []}
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:ex_machina, "~> 2.2", only: [:dev, :test]},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end

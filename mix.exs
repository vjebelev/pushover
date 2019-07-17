defmodule Pushover.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :pushover,
      version: @version,
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.1"},
      {:tesla, "~> 1.2.1"},
      {:google_gax, "~> 0.1.3"}
    ]
  end
end

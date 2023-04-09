defmodule DataTracer.MixProject do
  use Mix.Project

  def project do
    [
      app: :data_tracer,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {DataTracer.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:machete, "~> 0.2.6", only: :test},
      # Waiting for https://github.com/mtrudel/machete/pull/6
      {:machete, github: "axelson/machete", branch: "add-unix-time-matcher", only: :test},
      # {:machete, path: "~/dev/forks/machete", only: :test},
      # {:matcha, "~> 0.1"},
      # {:matcha, path: "~/dev/forks/matcha"},
      # https://github.com/christhekeele/matcha/pull/47
      # {:matcha, github: "axelson/matcha", branch: "more-select-operations"},
      {:matcha, github: "christhekeele/matcha", branch: "latest"},
      {:ex_doc, "~> 0.21", only: :docs},
      {:dialyxir, ">= 0.0.0", only: [:dev], runtime: false}
    ]
  end
end

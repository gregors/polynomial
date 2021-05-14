defmodule Polynomial.MixProject do
  use Mix.Project

  @version "0.1.0"
  @repo_url "https://github.com/gregors/polynomial"

  def project do
    [
      app: :polynomial,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      name: "polynomial",
      description: description(),
      package: package(),
      source_url: @repo_url,
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Polynomial functions"
  end

  defp package() do
    [
      maintainers: ["Gregory Ostermayr"],
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url}
    ]
  end
end

defmodule ComponentEx.Mixfile do
  use Mix.Project

  def project do
    [app: :component_ex,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     elixirc_paths: ["lib", "examples"],
     source_url: "https://github.com/sdn90/component_ex",
     docs: [extras: ["README.md"]]]

  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:phoenix_html, "~> 2.6.2"},
     {:ex_doc, "~> 0.12", only: :dev}]
  end
end

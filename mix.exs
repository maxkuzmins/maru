defmodule Lazymaru.Mixfile do
  use Mix.Project

  def project do
    [ app: :lazymaru,
      version: "0.0.2",
      elixir: "~> 0.14.2",
      deps: deps
    ]
  end

  def application do
    [ mod: { Lazymaru, [] },
      applications: [ :cowboy, :plug ]
    ]
  end

  defp deps do
    [ { :cowboy, "~> 0.10.0", github: "extend/cowboy" },
      { :plug,   github: "elixir-lang/plug", ref: "v0.5.1"},
      { :json,   github: "cblage/elixir-json" },
    ]
  end
end

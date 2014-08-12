defmodule Bins.Mixfile do
	use Mix.Project

	def project do
		[app: :bins,
			version: "0.0.1",
			elixir: "~> 0.15.0",
			deps: deps]
	end

	# Configuration for the OTP application
	#
	# Type `mix help compile.app` for more information
	def application do
		[applications: []]
	end

	# Dependencies can be hex.pm packages:
	#
	#   {:mydep, "~> 0.3.0"}
	#
	# Or git/path repositories:
	#
	#   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
	#
	# Type `mix help deps` for more examples and options
	defp deps do
		[
			{:sh, github: "brettof86/sh"},
			{:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.0"},
			{:httpotion, "~> 0.2.4"},
			{:jsx, "~> 2.0.4"}
		]
	end
end

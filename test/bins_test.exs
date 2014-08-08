defmodule BinsTest do
	use ExUnit.Case

	test "gh should get current branch from git" do
		Bins.gh(__DIR__) == "http://github-home/brettof86/elixir-bins.git"
	end
end

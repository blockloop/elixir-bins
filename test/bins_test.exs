defmodule BinsTest do
	use ExUnit.Case

	test "gh should get current branch from git" do
		assert Bins.gh(__DIR__) == "http://github.com/brettof86/elixir-bins.git"
	end
end

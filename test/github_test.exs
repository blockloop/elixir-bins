defmodule GithubTest do
	use ExUnit.Case

	setup_all do
		GitHub.start
		on_exit fn -> end
		:ok
	end

	test "should change this test" do
		assert GitHub.get("users/brettof86").headers[:Status] == "200 OK"
	end
end

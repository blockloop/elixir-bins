defmodule BinsTest do
  use ExUnit.Case

  test "gh should get current branch from git" do
    assert Bins.gh == "git@github.com:brettof86/sh.git"
  end
end

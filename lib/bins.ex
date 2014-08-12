require Sh

defmodule Bins do

	@doc ~S"""
		Opens the github/bitbucket url associated with the current directory
	"""
	def gh(dir), do: gh(dir, {:open, false})

	def gh(dir, {:open, false}) do
		git_remote_from_sh(dir)
	end

	def gh(dir, {:open, true}) do
		Sh.xdg_open git_remote_from_sh(dir)
	end

	defp git_remote_from_sh(dir) do
    # origin	git@github-home:brettof86/elixir-bins.git (fetch)
		str = Sh.git("remote", cd: dir, v: true)
			|> String.split("\n")
			|> Enum.map(&(Regex.split(~r/\s/, &1)))
			|> List.first
			|> Enum.at(1)
			|> String.replace(":", "/")
			|> String.replace("git@", "http://")
	end

end

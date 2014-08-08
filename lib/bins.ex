require Sh

defmodule Bins do

	def gh(dir), do: gh(dir, {:open, false})
	def gh(dir), do: gh(dir, {:open, false})
	def gh(dir, {:open, false}) do
		get_remote_from_sh(dir) |> convert_to_uri
	end
	def gh(dir, {:open, true}) do
		url = get_remote_from_sh(dir) |> convert_to_uri
		Sh.xdg_open url
	end

	defp get_remote_from_sh(dir) do
    # origin	git@github-home:brettof86/elixir-bins.git (fetch)
		str = Sh.git("remote", cd: dir, v: true)
			|> String.split("\n")
			|> Enum.map(&(Regex.split(~r/\s/, &1)))
			|> List.first
			|> Enum.at 1
	end

	defp convert_to_uri(remote) do
			remote
				|> String.replace(":", "/")
				|> String.replace("git@", "http://")
	end

end

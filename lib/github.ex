defmodule GitHub do
	use HTTPotion.Base

	def process_url(url) do
		"https://api.github.com/" <> url
	end

	def process_request_headers(headers) do
		Dict.put headers, :"User-Agent", "github-potion"
	end

	def process_response_body(body) do
		json = :jsx.decode to_string(body)
		json2 = Enum.map json, fn ({k, v}) -> { String.to_atom(k), v } end
		:orddict.from_list json2
	end
end

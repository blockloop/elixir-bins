require Sh

defmodule Bins do

  def gh do
    get_branch_from_sh("/Users/bjones027/projects/sh")
  end

  defp get_branch_from_sh(dir) do
    Sh.git "branch", cwd: dir
  end
end

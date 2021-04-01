defmodule Repo.Factory do
  use ExMachina.Ecto, repo: Repo.Repo

  alias Github.RepoInfo

  def repo_info_factory do
    %RepoInfo{
      id: 339_136_738,
      name: "c_makefile_template",
      description:
        "C Project Template with Makefile, based on: https://github.com/dutenrapha/makefile",
      html_url: "https://github.com/librity/c_makefile_template",
      stargazers_count: 1
    }
  end
end

defmodule RepoWeb.ReposController do
  use RepoWeb, :controller

  alias Github.RepoInfo
  alias RepoWeb.FallbackController

  action_fallback FallbackController

  def show(conn, %{"username" => username}) do
    with {:ok, [%RepoInfo{} | _tails] = repos} <- Repo.get_user_repos(username) do
      conn
      |> put_status(:ok)
      |> render("repos.json", repos: repos)
    end
  end
end

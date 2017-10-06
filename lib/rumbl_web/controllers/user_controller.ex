defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts
  alias Rumbl.Accounts.User
  alias Rumbl.Repo
  
  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.html", users: users
  end
end
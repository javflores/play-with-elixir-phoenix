defmodule Play.PageController do
  use Play.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

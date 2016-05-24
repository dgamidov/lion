defmodule Lion.PageController do
  use Lion.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

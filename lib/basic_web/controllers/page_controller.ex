defmodule BasicWeb.PageController do
  use BasicWeb, :controller

  def index( conn, params ) do
    template = if params[ "path_" ] == nil, do: "index.html", else: Path.join( params[ "path_" ] ) <> ".html"
    render( conn, template, params: params )
  end
end

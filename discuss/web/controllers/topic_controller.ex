defmodule Discuss.TopicController do
  use Discuss.Web, :controller
  
  alias Discuss.Topic # kinda like destruct in JS

  def new(conn, _params) do # conn is for connection, params is for parameters
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do

  end
end
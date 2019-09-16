defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  def new(conn, params) do # conn is for connection, params is for parameters
    IO.puts "++++"
    IO.inspect conn
    IO.puts "++++"
    IO.inspect params
    IO.puts "++++"
  end
end
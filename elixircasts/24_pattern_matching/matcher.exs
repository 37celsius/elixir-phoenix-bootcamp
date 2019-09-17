defmodule Matcher do
  def get_msg(response) do
    case response do
      {:ok, msg} ->
        "Success: #{msg}"
      {:error, msg} ->
        "Error: #{msg}"
    end
  end
end
defmodule PlayDoh.PlayroomsChannel do
  use Phoenix.Channel

  def join("playrooms:music", _message, socket) do
    {:ok, socket} 
  end
end
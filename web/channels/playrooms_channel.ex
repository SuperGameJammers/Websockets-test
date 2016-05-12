defmodule PlayDoh.PlayroomsChannel do
  use Phoenix.Channel

  def join("playrooms:music", _message, socket) do
    IO.puts "Someone joined! <3"
    {:ok, socket} 
  end

  def handle_in("note", _body, socket) do
    IO.puts "New note: #{inspect _body}"
    broadcast!(socket, "note", _body)
    {:noreply, socket}
  end
end
defmodule LanchoBack.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    IO.puts " > Start lancho_back app"
    children = [
      # Starts a worker by calling: SimpleServer.Worker.start_link(arg)
      # {SimpleServer.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SimpleServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

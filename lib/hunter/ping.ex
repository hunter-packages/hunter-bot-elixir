defmodule Hunter.Responders.Ping do
  @moduledoc """
  Hunter, ping

  Replies with pong to demonstrate the bot is active.
  """

  use Hedwig.Responder

  @usage """
  hunter ping - Replies with a pong.
  """
  hear ~r/ping/i, msg do
    reply msg, "pong"
  end
end

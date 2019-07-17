defmodule Pushover.Connection do
  @moduledoc """
  Handle Tesla connections for Pushover.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      "https://api.pushover.net/1"
    ],
    otp_app: :pushover,
    base_url: "https://api.pushover.net/1"
end

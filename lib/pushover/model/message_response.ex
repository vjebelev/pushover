defmodule Pushover.Model.MessageResponse do
  @moduledoc """
  A message response.

  ## Attributes

  *   `request` (*type:* `String.t`) - request id, e.g. "d2543c10-e59c-41f6-913c-0d4fcfc6d3ec"
  *   `status`  (*type:* `Integer.t`) - 1 for success
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :request => String.t(),
    :status => Integer.t()
  }

  field(:request)
  field(:status)
end

defimpl Poison.Decoder, for: Pushover.Model.MessageResponse do
  def decode(value, options) do
    Pushover.Model.MessageResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Pushover.Model.MessageResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

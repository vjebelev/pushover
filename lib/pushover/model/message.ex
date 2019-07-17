defmodule Pushover.Model.Message do
  @moduledoc """
  A message.

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - your message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :data => String.t()
  }

  field(:data)
end

defimpl Poison.Decoder, for: Pushover.Model.Message do
  def decode(value, options) do
    Pushover.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: Pushover.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

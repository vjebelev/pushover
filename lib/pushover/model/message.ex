defmodule Pushover.Model.Message do
  @moduledoc """
  A message.

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - Your message.
  *   `device` (*type:* `String.t`, *default:* `nil`) - Your user's device name(s) to send the message directly (multiple devices may be separated by a comma).
  *   `title` (*type:* `String.t`, *default:* `nil`) - Your message's title, otherwise your app name is used.
  *   `url` (*type:* `String.t`, *default:* `nil`) - A supplementary URL to show with your message.
  *   `url_title` (*type:* `String.t`, *default:* `nil`) - A title for your supplementary URL, otherwise just the URL is given.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Send as -2 to generate no notification/alert, -1 to always send as a quiet notification, 0 (default), 1 to display as high-priority and bypass the user's quiet hours, or 2 to also require confirmation from the user. Retry and expire are required if sending emergency-priority (2) notifications.
  *   'retry' (*type:* `integer()`, *default:* `nil`) - How often (in seconds) the Pushover servvers will send the same notification to the user.
  *   'expire' (*type:* `integer()`, *default:* `nil`) - How many seconds your notification will continue to be retried.
  *   `sound (*type:* `String.t`, *default:* `nil`) - The name of the sound to override the user's default sound choice.
  *   `timestamp` - a Unix timestamp of your message's date and time to display to the user, rather than the time your message is received by Pushover's servers'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :data => String.t(),
    :device => String.t(),
    :title => String.t(),
    :url => String.t(),
    :url_title => String.t(),
    :priority => integer(),
    :retry => integer(),
    :expire => integer(),
    :sound => String.t(),
    :timestamp => integer(),
  }

  field(:data)
  field(:device)
  field(:title)
  field(:url)
  field(:url_title)
  field(:priority)
  field(:expire)
  field(:retry)
  field(:sound)
  field(:timestamp)
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

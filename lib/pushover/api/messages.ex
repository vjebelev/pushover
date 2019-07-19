defmodule Pushover.Api.Messages do
  @moduledoc """
  API calls for Pushover Message API
  """

  alias Pushover.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Sends a message.

  ## Parameters

  *   `connection` (*type:* `Pushover.Connection.t`) - Connection to server
  *   `token` (*type:* `String.t`) - your application's API token.
  *   `user` (*type:* `String.t`) - the user/group key.
  *   `message` (*type:* `Pushover.Model.Message`) - the message to send.

  ## Returns
  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec send(Tesla.Env.client(), String.t(), String.t(), Pushover.Model.Message.t()) ::
        {:ok, Pushover.Model.MessageResponse.t()} | {:error, Tesla.Env.t()}
  def send(connection, token, user, message) do
    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/messages.json")
      |> Request.add_param(:query, :token, token)
      |> Request.add_param(:query, :user, user)
      |> Request.add_param(:body, :message, message.data)

    connection
    |> Connection.execute(request)
    |> Response.decode([struct: %Pushover.Model.MessageResponse{}])
  end
end

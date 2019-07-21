# Pushover
  
An Elixir client for the [Pushover app](https://pushover.net/).

## Installation

The package can be installed by adding `pushover` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pushover, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pushover](https://hexdocs.pm/pushover).

## Usage

To send a message via Pushover Message API:

```elixir
alias Pushover.{Connection, Model.Message, Api.Messages}
  
conn = Connection.new()
token = "APPLICATION_TOKEN"
user = "USER_KEY"
message = %Message{data: "Hello, World!"}

Messages.send(conn, token, user, message)

```

# Pushover
  
An Elixir client for the [Pushover app](https://pushover.net/).

## Installation

The package can be installed by adding `pushover` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pushover, "~> 0.3.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pushover](https://hexdocs.pm/pushover).

## Usage

Make sure Pushover user string and application tokens are setup in your config file (example below is for Elixir 1.9+), if using an older version use Mix.Config instead of Config.

```elixir
import Config

config :pushover,
  user: "YOUR_PUSHOVER_USER",
  token: "YOUR_PUSHOVER_TOKEN"
```

Alternatively, use environment variables PUSHOVER_USER and PUSHOVER_TOKEN.

To send a message via Pushover Message API:

```elixir
message = %Pushover.Model.Message{
  data: "Hello, World!",
  device: "max,lesley,john",
  title: "Meeting",
  priority: 1
}

Pushover.Api.Messages.send(message)

```

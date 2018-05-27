# QRCode

generate qrcode util

## Installation

by adding `qrcode` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:qrcode, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
QRCode.to_png_file("hello world", "/Users/hello/tmp/helloworld.png")
```

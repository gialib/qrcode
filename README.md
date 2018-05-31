# QRCode

generate qrcode util

## Installation

by adding `qrcode` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:qrcode, "~> 0.1.2"}
  ]
end
```

## Usage

```elixir
# save qrcode png to file "/Users/hello/tmp/helloworld.png"
QRCode.to_png_file("hello world", "/Users/hello/tmp/helloworld.png")

# save qrcode png to file "~/tmp/helloworld.png"
QRCode.to_png_file("hello world", "~/tmp/helloworld.png")

# save qrcode png to file "~/tmp/helloworld.png" with quiet_zone is 1
QRCode.to_png_file("hello world", "~/tmp/helloworld.png", quiet_zone: 1)
```

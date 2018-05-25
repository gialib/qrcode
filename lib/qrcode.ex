defmodule Qrcode do

  def render2png(text) when is_binary(text) do
    text
    |> :qrcode_erl.encode
    |> :qrcode_erl_demo.simple_png_encode
  end

  def render2png_file(text, file_path) when is_binary(text) do
    :file.write_file(file_path, render2png(text))
  end

end

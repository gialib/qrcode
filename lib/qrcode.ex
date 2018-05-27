defmodule QRCode do

  def to_png(text) when is_binary(text) do
    text
    |> :qrcode_erl.encode
    |> :qrcode_erl_demo.simple_png_encode
  end

  def to_png_file(text, file_path) when is_binary(text) do
    :file.write_file(file_path, to_png(text))
  end

end

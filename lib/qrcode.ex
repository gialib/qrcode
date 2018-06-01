defmodule QRCode do

  @doc """
  to png content

  ## Params

  * text  content
  * opts
    - :quiet_zone default is 0
  """
  def to_png(text, opts \\ []) when is_binary(text) do
    text
    |> :qrcode_erl.encode(Keyword.get(opts, :quiet_zone, 0))
    |> :qrcode_erl_png.simple_encode
  end

  @doc """
  to png file

  ## Params

  * text  content
  * opts
    - :quiet_zone default is 0
  """
  def to_png_file(text, file_path, opts \\ []) when is_binary(text) do
    file_path = file_path |> Path.expand
    file_path |> Path.dirname |> File.mkdir_p!
    file_path |> :file.write_file(to_png(text, opts))
  end

end

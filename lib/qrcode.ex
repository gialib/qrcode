defmodule QRCode do

  @doc """
  ## Params

  * text 内容
  * opts
    * :quiet_zone 边缘的留白的宽度 默认为0
  """
  def to_png(text, opts \\ []) when is_binary(text) do
    text
    |> :qrcode_erl.encode(Keyword.get(opts, :quiet_zone, 0))
    |> :qrcode_erl_demo.simple_png_encode
  end

  def to_png_file(text, file_path, opts \\ []) when is_binary(text) do
    :file.write_file(file_path, to_png(text, opts))
  end

end

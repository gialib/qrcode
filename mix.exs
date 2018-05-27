defmodule QRCode.MixProject do
  use Mix.Project

  def project do
    [
      app: :qrcode,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "QRCode",
      description: "Generate qrcode utils",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def package do
    [
      maintainers: ["happy"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/gulib/qrcode"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:qrcode_erl, path: "vendor/qrcode_erl", runtime: false}
    ]
  end
end

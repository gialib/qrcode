QR Code Encoder
===============

Reference used was ISO/IEC 18004, 1st Edition (2000)

This implementation is informed by my specific needs, i.e. to provide
two-factor authentication for mobile phones running Google Authenticator.

+ "Byte" mode only (don't need e.g. numeric mode or kanji mode).
+ Encode only (no detection/decode).
+ Basic supporting library functions provided (HOTP, PNG image functions) to allow full-cyle demo.

Demo
====

1. Download repo and compile with `erl -make`
2. Install Google Authenticator App on your mobile:
	+ iPhone:  http://itunes.apple.com/us/app/google-authenticator/id388497605?mt=8
	+ Android: https://market.android.com/details?id=com.google.android.apps.authenticator
3. Run demo: `qrcode_erl_demo:run().`
4. Open the generated `qrcode_erl.png` file
5. Scan the qrcode_erl into the phone.
6. Ensure server clock is correct.
7. The value of `qrcode_erl_demo:totp()` should show the same passcode as the phone.
8. Handle PINs/logins for the second part of the "two factor" according to your application design.

NOTE: This documentation is rather basic as this was open-sourced by specific request!


How to use QR Code Encoder with Elixir
======================================

Add :qrcode_erl to `mix.deps`
::

    defp deps do
      [{:qrcode_erl, git: “git@gitlab.com:Pacodastre/qrcode_erl.git”}]
    end

Then run:
::

    mix deps.get
    mix deps.compile

Then, whenever you have this compiled, you should have access to the functions available in elixir.

    iex(1)> qrcode_erl = :qrcode_erl.encode(“bla”)
    {:qrcode_erl, 1, :M, 29,
     <<0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 211, 248, 4, 16, 208, 64, 46, 152, ...>>}
     iex(2)> png = :qrcode_erl_demo.simple_png_encode(qrcode_erl)
     <<137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 232, 0, 0, 0, ...>>
     iex(3)> :file.write_file(“example.png”, png)
     :ok


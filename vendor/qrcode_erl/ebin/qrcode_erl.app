{application, qrcode_erl,
 [{description, "QRCode Encoder"},
  {vsn, "1.0.3"},
  {modules, [qrcode_erl, qrcode_erl_matrix, qrcode_erl_mask, qrcode_erl_reedsolomon, gf256, bits, base32]},
  {mod, {qrcode_erl, []}},
  {registered, []},
  {env, []},
  {applications, [kernel, stdlib]}
]}.

def rot13(secret_messages = [])
  puts secret_messages.map { |m| m.tr("a-z", "n-za-m") }
end

msgs = [
  "Why did the chicken cross the road?",
  "Gb trg gb gur bgure fvqr!",
]

rot13(msgs)
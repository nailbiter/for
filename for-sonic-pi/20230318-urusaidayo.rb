use_synth :saw

live_loop :solenoid1 do
  play 38
  sleep 0.25
  play 50
  sleep 0.25
  use_synth :prophet
  play 57
  sample "/Users/nailbiter/Downloads/audio_2023-03-18_13-56-53.ogg"
  sleep 2
end
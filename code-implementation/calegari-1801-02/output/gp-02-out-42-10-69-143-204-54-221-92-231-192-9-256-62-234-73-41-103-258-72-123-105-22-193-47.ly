\include "../paper_settings.ly" 
\header { piece = \markup "[42-10-69-143-204-54-221-92-231-192-9-256-62-234-73-41-103-258-72-123-105-22-193-47]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new ChoirStaff
    <<
    %Voice1 part
    \context Staff = "voiceone" \with { instrumentName = "Canto Primo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc1/gp-02-vc1-42.ly"
    \include "../vc1/gp-02-vc1-10.ly"
    \include "../vc1/gp-02-vc1-69.ly"
    \include "../vc1/gp-02-vc1-143.ly"
    \include "../vc1/gp-02-vc1-204.ly"
    \include "../vc1/gp-02-vc1-54.ly"
    \include "../vc1/gp-02-vc1-221.ly"
    \include "../vc1/gp-02-vc1-92.ly"
    \include "../vc1/gp-02-vc1-231.ly"
    \include "../vc1/gp-02-vc1-192.ly"
    \include "../vc1/gp-02-vc1-9.ly"
    \include "../vc1/gp-02-vc1-256.ly"
    \include "../vc1/gp-02-vc1-62.ly"
    \include "../vc1/gp-02-vc1-234.ly"
    \include "../vc1/gp-02-vc1-73.ly"
    \include "../vc1/gp-02-vc1-41.ly"
    \include "../vc1/gp-02-vc1-103.ly"
    \include "../vc1/gp-02-vc1-258.ly"
    \include "../vc1/gp-02-vc1-72.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-105.ly"
    \include "../vc1/gp-02-vc1-22.ly"
    \include "../vc1/gp-02-vc1-193.ly"
    \include "../vc1/gp-02-vc1-47.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-42.ly"
    \include "../vc2/gp-02-vc2-10.ly"
    \include "../vc2/gp-02-vc2-69.ly"
    \include "../vc2/gp-02-vc2-143.ly"
    \include "../vc2/gp-02-vc2-204.ly"
    \include "../vc2/gp-02-vc2-54.ly"
    \include "../vc2/gp-02-vc2-221.ly"
    \include "../vc2/gp-02-vc2-92.ly"
    \include "../vc2/gp-02-vc2-231.ly"
    \include "../vc2/gp-02-vc2-192.ly"
    \include "../vc2/gp-02-vc2-9.ly"
    \include "../vc2/gp-02-vc2-256.ly"
    \include "../vc2/gp-02-vc2-62.ly"
    \include "../vc2/gp-02-vc2-234.ly"
    \include "../vc2/gp-02-vc2-73.ly"
    \include "../vc2/gp-02-vc2-41.ly"
    \include "../vc2/gp-02-vc2-103.ly"
    \include "../vc2/gp-02-vc2-258.ly"
    \include "../vc2/gp-02-vc2-72.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-105.ly"
    \include "../vc2/gp-02-vc2-22.ly"
    \include "../vc2/gp-02-vc2-193.ly"
    \include "../vc2/gp-02-vc2-47.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-42.ly"
    \include "../rh/gp-02-rh-10.ly"
    \include "../rh/gp-02-rh-69.ly"
    \include "../rh/gp-02-rh-143.ly"
    \include "../rh/gp-02-rh-204.ly"
    \include "../rh/gp-02-rh-54.ly"
    \include "../rh/gp-02-rh-221.ly"
    \include "../rh/gp-02-rh-92.ly"
    \include "../rh/gp-02-rh-231.ly"
    \include "../rh/gp-02-rh-192.ly"
    \include "../rh/gp-02-rh-9.ly"
    \include "../rh/gp-02-rh-256.ly"
    \include "../rh/gp-02-rh-62.ly"
    \include "../rh/gp-02-rh-234.ly"
    \include "../rh/gp-02-rh-73.ly"
    \include "../rh/gp-02-rh-41.ly"
    \include "../rh/gp-02-rh-103.ly"
    \include "../rh/gp-02-rh-258.ly"
    \include "../rh/gp-02-rh-72.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-105.ly"
    \include "../rh/gp-02-rh-22.ly"
    \include "../rh/gp-02-rh-193.ly"
    \include "../rh/gp-02-rh-47.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-42.ly"
    \include "../lh/gp-02-lh-10.ly"
    \include "../lh/gp-02-lh-69.ly"
    \include "../lh/gp-02-lh-143.ly"
    \include "../lh/gp-02-lh-204.ly"
    \include "../lh/gp-02-lh-54.ly"
    \include "../lh/gp-02-lh-221.ly"
    \include "../lh/gp-02-lh-92.ly"
    \include "../lh/gp-02-lh-231.ly"
    \include "../lh/gp-02-lh-192.ly"
    \include "../lh/gp-02-lh-9.ly"
    \include "../lh/gp-02-lh-256.ly"
    \include "../lh/gp-02-lh-62.ly"
    \include "../lh/gp-02-lh-234.ly"
    \include "../lh/gp-02-lh-73.ly"
    \include "../lh/gp-02-lh-41.ly"
    \include "../lh/gp-02-lh-103.ly"
    \include "../lh/gp-02-lh-258.ly"
    \include "../lh/gp-02-lh-72.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-105.ly"
    \include "../lh/gp-02-lh-22.ly"
    \include "../lh/gp-02-lh-193.ly"
    \include "../lh/gp-02-lh-47.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
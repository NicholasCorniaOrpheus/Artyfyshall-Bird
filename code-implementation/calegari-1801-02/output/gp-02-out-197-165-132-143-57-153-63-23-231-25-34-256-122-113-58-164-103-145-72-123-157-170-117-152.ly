\include "../paper_settings.ly" 
\header { piece = \markup "[197-165-132-143-57-153-63-23-231-25-34-256-122-113-58-164-103-145-72-123-157-170-117-152]" }

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
    \include "../vc1/gp-02-vc1-197.ly"
    \include "../vc1/gp-02-vc1-165.ly"
    \include "../vc1/gp-02-vc1-132.ly"
    \include "../vc1/gp-02-vc1-143.ly"
    \include "../vc1/gp-02-vc1-57.ly"
    \include "../vc1/gp-02-vc1-153.ly"
    \include "../vc1/gp-02-vc1-63.ly"
    \include "../vc1/gp-02-vc1-23.ly"
    \include "../vc1/gp-02-vc1-231.ly"
    \include "../vc1/gp-02-vc1-25.ly"
    \include "../vc1/gp-02-vc1-34.ly"
    \include "../vc1/gp-02-vc1-256.ly"
    \include "../vc1/gp-02-vc1-122.ly"
    \include "../vc1/gp-02-vc1-113.ly"
    \include "../vc1/gp-02-vc1-58.ly"
    \include "../vc1/gp-02-vc1-164.ly"
    \include "../vc1/gp-02-vc1-103.ly"
    \include "../vc1/gp-02-vc1-145.ly"
    \include "../vc1/gp-02-vc1-72.ly"
    \include "../vc1/gp-02-vc1-123.ly"
    \include "../vc1/gp-02-vc1-157.ly"
    \include "../vc1/gp-02-vc1-170.ly"
    \include "../vc1/gp-02-vc1-117.ly"
    \include "../vc1/gp-02-vc1-152.ly"
    }
    >>
    %Voice2 part
    \context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \include "../vc2/gp-02-vc2-197.ly"
    \include "../vc2/gp-02-vc2-165.ly"
    \include "../vc2/gp-02-vc2-132.ly"
    \include "../vc2/gp-02-vc2-143.ly"
    \include "../vc2/gp-02-vc2-57.ly"
    \include "../vc2/gp-02-vc2-153.ly"
    \include "../vc2/gp-02-vc2-63.ly"
    \include "../vc2/gp-02-vc2-23.ly"
    \include "../vc2/gp-02-vc2-231.ly"
    \include "../vc2/gp-02-vc2-25.ly"
    \include "../vc2/gp-02-vc2-34.ly"
    \include "../vc2/gp-02-vc2-256.ly"
    \include "../vc2/gp-02-vc2-122.ly"
    \include "../vc2/gp-02-vc2-113.ly"
    \include "../vc2/gp-02-vc2-58.ly"
    \include "../vc2/gp-02-vc2-164.ly"
    \include "../vc2/gp-02-vc2-103.ly"
    \include "../vc2/gp-02-vc2-145.ly"
    \include "../vc2/gp-02-vc2-72.ly"
    \include "../vc2/gp-02-vc2-123.ly"
    \include "../vc2/gp-02-vc2-157.ly"
    \include "../vc2/gp-02-vc2-170.ly"
    \include "../vc2/gp-02-vc2-117.ly"
    \include "../vc2/gp-02-vc2-152.ly"
    }
    >>
    >>
    %Piano part
    \context PianoStaff \with { instrumentName = "Piano-Forte"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \include "../rh/gp-02-rh-197.ly"
    \include "../rh/gp-02-rh-165.ly"
    \include "../rh/gp-02-rh-132.ly"
    \include "../rh/gp-02-rh-143.ly"
    \include "../rh/gp-02-rh-57.ly"
    \include "../rh/gp-02-rh-153.ly"
    \include "../rh/gp-02-rh-63.ly"
    \include "../rh/gp-02-rh-23.ly"
    \include "../rh/gp-02-rh-231.ly"
    \include "../rh/gp-02-rh-25.ly"
    \include "../rh/gp-02-rh-34.ly"
    \include "../rh/gp-02-rh-256.ly"
    \include "../rh/gp-02-rh-122.ly"
    \include "../rh/gp-02-rh-113.ly"
    \include "../rh/gp-02-rh-58.ly"
    \include "../rh/gp-02-rh-164.ly"
    \include "../rh/gp-02-rh-103.ly"
    \include "../rh/gp-02-rh-145.ly"
    \include "../rh/gp-02-rh-72.ly"
    \include "../rh/gp-02-rh-123.ly"
    \include "../rh/gp-02-rh-157.ly"
    \include "../rh/gp-02-rh-170.ly"
    \include "../rh/gp-02-rh-117.ly"
    \include "../rh/gp-02-rh-152.ly"
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/gp-02-lh-197.ly"
    \include "../lh/gp-02-lh-165.ly"
    \include "../lh/gp-02-lh-132.ly"
    \include "../lh/gp-02-lh-143.ly"
    \include "../lh/gp-02-lh-57.ly"
    \include "../lh/gp-02-lh-153.ly"
    \include "../lh/gp-02-lh-63.ly"
    \include "../lh/gp-02-lh-23.ly"
    \include "../lh/gp-02-lh-231.ly"
    \include "../lh/gp-02-lh-25.ly"
    \include "../lh/gp-02-lh-34.ly"
    \include "../lh/gp-02-lh-256.ly"
    \include "../lh/gp-02-lh-122.ly"
    \include "../lh/gp-02-lh-113.ly"
    \include "../lh/gp-02-lh-58.ly"
    \include "../lh/gp-02-lh-164.ly"
    \include "../lh/gp-02-lh-103.ly"
    \include "../lh/gp-02-lh-145.ly"
    \include "../lh/gp-02-lh-72.ly"
    \include "../lh/gp-02-lh-123.ly"
    \include "../lh/gp-02-lh-157.ly"
    \include "../lh/gp-02-lh-170.ly"
    \include "../lh/gp-02-lh-117.ly"
    \include "../lh/gp-02-lh-152.ly"
    \bar":|."
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
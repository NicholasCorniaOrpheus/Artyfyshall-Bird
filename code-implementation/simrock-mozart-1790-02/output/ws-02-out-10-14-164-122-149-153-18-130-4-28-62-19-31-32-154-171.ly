\include "../paper_settings.ly" 
\header { piece = \markup "[10-14-164-122-149-153-18-130-4-28-62-19-31-32-154-171]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    %Harpsichord part
    \context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}
    <<
    \context Staff = "rh" {
    \include "../voice_option.ly"
    \bar".|:"
    \mark \markup{Erster Theil}
    \include "../rh/ws-02-rh-10.ly"
    \include "../rh/ws-02-rh-14.ly"
    \include "../rh/ws-02-rh-164.ly"
    \include "../rh/ws-02-rh-122.ly"
    \include "../rh/ws-02-rh-149.ly"
    \include "../rh/ws-02-rh-153.ly"
    \include "../rh/ws-02-rh-18.ly"
    \include "../rh/ws-02-rh-130.ly"
    \bar":|.|:"
    \break
    \mark \markup{Zweiter Theil}
    \include "../rh/ws-02-rh-4.ly"
    \include "../rh/ws-02-rh-28.ly"
    \include "../rh/ws-02-rh-62.ly"
    \include "../rh/ws-02-rh-19.ly"
    \include "../rh/ws-02-rh-31.ly"
    \include "../rh/ws-02-rh-32.ly"
    \include "../rh/ws-02-rh-154.ly"
    \include "../rh/ws-02-rh-171.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/ws-02-lh-10.ly"
    \include "../lh/ws-02-lh-14.ly"
    \include "../lh/ws-02-lh-164.ly"
    \include "../lh/ws-02-lh-122.ly"
    \include "../lh/ws-02-lh-149.ly"
    \include "../lh/ws-02-lh-153.ly"
    \include "../lh/ws-02-lh-18.ly"
    \include "../lh/ws-02-lh-130.ly"
    \include "../lh/ws-02-lh-4.ly"
    \include "../lh/ws-02-lh-28.ly"
    \include "../lh/ws-02-lh-62.ly"
    \include "../lh/ws-02-lh-19.ly"
    \include "../lh/ws-02-lh-31.ly"
    \include "../lh/ws-02-lh-32.ly"
    \include "../lh/ws-02-lh-154.ly"
    \include "../lh/ws-02-lh-171.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
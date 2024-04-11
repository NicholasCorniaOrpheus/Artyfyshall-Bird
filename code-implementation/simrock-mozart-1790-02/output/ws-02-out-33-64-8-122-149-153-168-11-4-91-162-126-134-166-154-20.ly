\include "../paper_settings.ly" 
\header { piece = \markup "[33-64-8-122-149-153-168-11-4-91-162-126-134-166-154-20]" }

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
    \include "../rh/ws-02-rh-33.ly"
    \include "../rh/ws-02-rh-64.ly"
    \include "../rh/ws-02-rh-8.ly"
    \include "../rh/ws-02-rh-122.ly"
    \include "../rh/ws-02-rh-149.ly"
    \include "../rh/ws-02-rh-153.ly"
    \include "../rh/ws-02-rh-168.ly"
    \include "../rh/ws-02-rh-11.ly"
    \bar":|.|:"
    \break
    \mark \markup{Zweiter Theil}
    \include "../rh/ws-02-rh-4.ly"
    \include "../rh/ws-02-rh-91.ly"
    \include "../rh/ws-02-rh-162.ly"
    \include "../rh/ws-02-rh-126.ly"
    \include "../rh/ws-02-rh-134.ly"
    \include "../rh/ws-02-rh-166.ly"
    \include "../rh/ws-02-rh-154.ly"
    \include "../rh/ws-02-rh-20.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/ws-02-lh-33.ly"
    \include "../lh/ws-02-lh-64.ly"
    \include "../lh/ws-02-lh-8.ly"
    \include "../lh/ws-02-lh-122.ly"
    \include "../lh/ws-02-lh-149.ly"
    \include "../lh/ws-02-lh-153.ly"
    \include "../lh/ws-02-lh-168.ly"
    \include "../lh/ws-02-lh-11.ly"
    \include "../lh/ws-02-lh-4.ly"
    \include "../lh/ws-02-lh-91.ly"
    \include "../lh/ws-02-lh-162.ly"
    \include "../lh/ws-02-lh-126.ly"
    \include "../lh/ws-02-lh-134.ly"
    \include "../lh/ws-02-lh-166.ly"
    \include "../lh/ws-02-lh-154.ly"
    \include "../lh/ws-02-lh-20.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
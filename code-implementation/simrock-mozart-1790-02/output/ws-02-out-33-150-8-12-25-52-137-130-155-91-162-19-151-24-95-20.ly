\include "../paper_settings.ly" 
\header { piece = \markup "[33-150-8-12-25-52-137-130-155-91-162-19-151-24-95-20]" }

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
    \include "../rh/ws-02-rh-150.ly"
    \include "../rh/ws-02-rh-8.ly"
    \include "../rh/ws-02-rh-12.ly"
    \include "../rh/ws-02-rh-25.ly"
    \include "../rh/ws-02-rh-52.ly"
    \include "../rh/ws-02-rh-137.ly"
    \include "../rh/ws-02-rh-130.ly"
    \bar":|.|:"
    \break
    \mark \markup{Zweiter Theil}
    \include "../rh/ws-02-rh-155.ly"
    \include "../rh/ws-02-rh-91.ly"
    \include "../rh/ws-02-rh-162.ly"
    \include "../rh/ws-02-rh-19.ly"
    \include "../rh/ws-02-rh-151.ly"
    \include "../rh/ws-02-rh-24.ly"
    \include "../rh/ws-02-rh-95.ly"
    \include "../rh/ws-02-rh-20.ly"
    \bar"|."
    }
    \context Staff = "lh" {
    \include "../bassline_option.ly"
    \include "../lh/ws-02-lh-33.ly"
    \include "../lh/ws-02-lh-150.ly"
    \include "../lh/ws-02-lh-8.ly"
    \include "../lh/ws-02-lh-12.ly"
    \include "../lh/ws-02-lh-25.ly"
    \include "../lh/ws-02-lh-52.ly"
    \include "../lh/ws-02-lh-137.ly"
    \include "../lh/ws-02-lh-130.ly"
    \include "../lh/ws-02-lh-155.ly"
    \include "../lh/ws-02-lh-91.ly"
    \include "../lh/ws-02-lh-162.ly"
    \include "../lh/ws-02-lh-19.ly"
    \include "../lh/ws-02-lh-151.ly"
    \include "../lh/ws-02-lh-24.ly"
    \include "../lh/ws-02-lh-95.ly"
    \include "../lh/ws-02-lh-20.ly"
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
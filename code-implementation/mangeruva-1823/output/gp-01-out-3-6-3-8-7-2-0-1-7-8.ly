\include "../paper_settings.ly" 
\header { piece = \markup "[3-6-3-8-7-2-0-1-7-8]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    %Voice part: Prima parte
    \context Staff = "voice" \with { instrumentName = "Voice" }
    <<
    \set Staff.midiInstrument =#"voice oohs" {
    \include "../voice_option.ly"
    \mark \markup{"Prima Parte"} 
    \bar".|:" 
    \include "../parte1/mw-01-3-6-3-8-7-2-0-1-7-8.ly" 
    \bar":|.|:" 
    \break
    \mark \markup{"Seconda Parte"} 
    \include "../parte2/mw-02-3-6-3-8-7-2-0-1-7-8.ly" 
    \bar":|.|:" 
    \break
    \mark \markup{"Terza Parte"} 
    \include "../parte3/mw-03-3-6-3-8-7-2-0-1-7-8.ly" 
    \bar":|." 
    }
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
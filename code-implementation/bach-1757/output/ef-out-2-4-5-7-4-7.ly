\include "../paper_settings.ly" 
\header { piece = \markup "[2-4-5-7-4-7]" }

  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<
    \new ChoirStaff
    <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Discant" }
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "../voice_option.ly"
    \include "../uv/ef-uv-1-2.ly"
    \include "../uv/ef-uv-2-4.ly"
    \include "../uv/ef-uv-3-5.ly"
    \include "../uv/ef-uv-4-7.ly"
    \include "../uv/ef-uv-5-4.ly"
    \include "../uv/ef-uv-6-7.ly"
    \bar"||"
    }
    >>
    %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Bass" }
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "../bassline_option.ly"
    \include "../lv/ef-lv-1-2.ly"
    \include "../lv/ef-lv-2-4.ly"
    \include "../lv/ef-lv-3-5.ly"
    \include "../lv/ef-lv-4-7.ly"
    \include "../lv/ef-lv-5-4.ly"
    \include "../lv/ef-lv-6-7.ly"
    \bar"||"
    }
    >>
    >>
    >>
    \include "../layout_settings.ly"
  %! abjad.LilyPondFile._get_format_pieces()
}
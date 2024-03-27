\header { piece = \markup "[108-19-233-230-226-224-78-223-218]" }
\include "paper_settings.ly"

\score{
 << 
 \new ChoirStaff 
 <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Dessus" }
    
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "voice_option.ly"
\include "./uv/lm-01-uv-6-2.ly"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/lm-01-lv-6-2.ly"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

\header { piece = \markup "[0-0-198-226-224-223-221-51]" }
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
\include "./uv/lm-01-uv-8-1.ly"
\bar":|.|:"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/lm-01-lv-8-1.ly"
\bar":|.|:"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

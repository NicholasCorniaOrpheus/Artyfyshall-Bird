\header { piece = \markup "[190-113-114-117-190-103-105-195-76]" }
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
\include "./uv/lm-01-uv-9-3.ly"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/lm-01-lv-9-3.ly"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

\include "paper_settings.ly"

\score{
 << 
 \new ChoirStaff 
 <<
    %Upper voice part
    \context Staff = "upper" \with { instrumentName = "Discant" }
    
    <<
    \set Staff.midiInstrument =#"violin" {
    \include "voice_option.ly"
\include "./uv/ef-uv-3-8.ly"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Bass" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/ef-lv-3-8.ly"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

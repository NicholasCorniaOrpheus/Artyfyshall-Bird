\header { piece = \markup "[111-103-84-189-113-114-117-193-190]" }
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
\include "./uv/lm-01-uv-7-9.ly"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/lm-01-lv-7-9.ly"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

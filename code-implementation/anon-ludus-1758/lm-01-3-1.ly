\header { piece = \markup "[86-190-114-117-113-193-111-113-108-196]" }
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
\include "./uv/lm-01-uv-3-1.ly"
} 

>> 

 %Lower voice part
    \context Staff = "lower" \with { instrumentName = "Basse" }
    
    <<
    \set Staff.midiInstrument =#"cello" {
    \include "bassline_option.ly"
\include "./lv/lm-01-lv-3-1.ly"
}
        
    >>
    
    >>
    

  
 >> 
\include "layout_settings.ly"
 
}

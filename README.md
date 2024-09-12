# Artyfyshall-Bird

A collection of pre-digital generative models for music composition from the period between 1600 and 1850. 
Part of the music tratises has been transcribed in [Lilypond](https://lilypond.org/) format and emulated with a Python implementation using the [Abjad](https://abjad.github.io/) library.

The code is part of an upcoming publication of the authors for ISMIR 2024. 

## List of treatises and dice games

For a detailed list of musical treatises and their digital images and implementations, visit the[ list in the documentation section](./documentation/treatises_list.md).

## Guidelines for dataset

You can find all the implementation of the aforementioned treatises in the **code-implementation** folder. 

The python programmes are all available on the [**code-implementation**](./code-implementation) directory, while the music transcriptions are recorded into separate directories, according to measure and voice type. Furthermore, you can find the generated scores in the local **output**. The score is encoded in [Lilypond](https://lilypond.org/) open-source format and can be compiled to automatically generate a MIDI and a PDF file of the music.
  
An example: the calegari-gioco-pitagorico-01.py implements the first tabular system of Antonio Calegari's *Gioco Pitagorico* from 1801. The directory structure of **calegari-1801-01** is:

```
calegari-1801-01
	|_______ output (generated scores in .ly format)
	|_______ temp (temporary directory of .log files from Abjad)
	|_______ voice (measure fragments of the singing part)
	|_______ rh (measure fragments of the right hand of the piano)
	|_______ lh (measure fragments of the left hand of the piano)
	|_______ gp-01-x.ly
		 gp-01-x.midi
		 gp-01-x.pdf
		 ....
```

## Digital images

Alongside the code and machine-readable transcriptions of the music, we provide images and pdf of the digitized treatises. The scores are public domain, and their provenance is indicated in the [documentation](./documentation/treatises_list.md).


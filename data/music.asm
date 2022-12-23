; Song Moozinade de Noel in Lightweight format (V1).
; Generated by Arkos Tracker 2.

MoozinadedeNoel_Start
MoozinadedeNoel_StartDisarkGenerateExternalLabel

MoozinadedeNoel_DisarkByteRegionStart0
	db "ATLW"	; Format marker (LightWeight).
	db 1	; Format version.
MoozinadedeNoel_DisarkByteRegionEnd0
MoozinadedeNoel_DisarkPointerRegionStart1
	dw MoozinadedeNoel_FmInstrumentTable
	dw MoozinadedeNoel_ArpeggioTable
	dw MoozinadedeNoel_PitchTable
; Table of the Subsongs.
	dw MoozinadedeNoel_Subsong0
MoozinadedeNoel_DisarkPointerRegionEnd1

; The Arpeggio table.
MoozinadedeNoel_ArpeggioTable
MoozinadedeNoel_DisarkWordRegionStart2
	dw 0
MoozinadedeNoel_DisarkWordRegionEnd2
MoozinadedeNoel_DisarkPointerRegionStart3
MoozinadedeNoel_DisarkPointerRegionEnd3

; The Pitch table.
MoozinadedeNoel_PitchTable
MoozinadedeNoel_DisarkWordRegionStart4
	dw 0
MoozinadedeNoel_DisarkWordRegionEnd4
MoozinadedeNoel_DisarkPointerRegionStart5
MoozinadedeNoel_DisarkPointerRegionEnd5

; The FM Instrument table.
MoozinadedeNoel_FmInstrumentTable
MoozinadedeNoel_DisarkPointerRegionStart6
	dw MoozinadedeNoel_FmInstrument0
	dw MoozinadedeNoel_FmInstrument1
	dw MoozinadedeNoel_FmInstrument2
MoozinadedeNoel_DisarkPointerRegionEnd6

MoozinadedeNoel_DisarkByteRegionStart7
MoozinadedeNoel_FmInstrument0
	db 255	; Speed.

MoozinadedeNoel_FmInstrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
MoozinadedeNoel_DisarkPointerRegionStart8
	dw MoozinadedeNoel_FmInstrument0Loop	; Loops.
MoozinadedeNoel_DisarkPointerRegionEnd8

MoozinadedeNoel_FmInstrument1
	db 0	; Speed.

	db 61	; Volume: 15.

	db 57	; Volume: 14.

	db 53	; Volume: 13.

	db 49	; Volume: 12.

	db 45	; Volume: 11.

	db 41	; Volume: 10.

	db 37	; Volume: 9.

	db 33	; Volume: 8.

	db 29	; Volume: 7.

	db 25	; Volume: 6.

	db 21	; Volume: 5.

	db 17	; Volume: 4.

	db 13	; Volume: 3.

	db 9	; Volume: 2.

	db 5	; Volume: 1.

	db 4	; End the instrument.
MoozinadedeNoel_DisarkPointerRegionStart9
	dw MoozinadedeNoel_FmInstrument0Loop	; Loop to silence.
MoozinadedeNoel_DisarkPointerRegionEnd9

MoozinadedeNoel_FmInstrument2
	db 0	; Speed.

	db 189	; Volume: 15.
	db 25	; Arpeggio: 12.
	db 11	; Noise: 11.

	db 185	; Volume: 14.
	db 27	; Arpeggio: 13.
	db 10	; Noise: 10.

	db 181	; Volume: 13.
	db 33	; Arpeggio: 16.
	db 9	; Noise: 9.

	db 181	; Volume: 13.
	db 19	; Arpeggio: 9.
	db 8	; Noise: 8.

	db 177	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 7	; Noise: 7.

	db 169	; Volume: 10.
	db 19	; Arpeggio: 9.
	db 6	; Noise: 6.

	db 161	; Volume: 8.
	db 29	; Arpeggio: 14.
	db 5	; Noise: 5.

	db 153	; Volume: 6.
	db 1	; Arpeggio: 0.
	db 4	; Noise: 4.

	db 145	; Volume: 4.
	db 1	; Arpeggio: 0.
	db 3	; Noise: 3.

	db 141	; Volume: 3.
	db 1	; Arpeggio: 0.
	db 2	; Noise: 2.

	db 4	; End the instrument.
MoozinadedeNoel_DisarkPointerRegionStart10
	dw MoozinadedeNoel_FmInstrument0Loop	; Loop to silence.
MoozinadedeNoel_DisarkPointerRegionEnd10

MoozinadedeNoel_DisarkByteRegionEnd7
MoozinadedeNoel_Subsong0DisarkByteRegionStart0
; Song Moozinade de Noel, Subsong 0 - Main - in Lightweight format (V1).
; Generated by Arkos Tracker 2.

MoozinadedeNoel_Subsong0
	db 4	; Initial speed.

; The Linker.
; Pattern 0
	db 5	; State byte.
	db 63	; New height.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart1
	dw MoozinadedeNoel_Subsong0_Track0, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd1
; The tracks.

; Pattern 1
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart2
	dw MoozinadedeNoel_Subsong0_Track3, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd2
; The tracks.

; Pattern 2
MoozinadedeNoel_Subsong0loop
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart3
	dw MoozinadedeNoel_Subsong0_Track2, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd3
; The tracks.

; Pattern 3
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart4
	dw MoozinadedeNoel_Subsong0_Track4, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd4
; The tracks.

; Pattern 4
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart5
	dw MoozinadedeNoel_Subsong0_Track5, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd5
; The tracks.

; Pattern 5
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart6
	dw MoozinadedeNoel_Subsong0_Track6, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd6
; The tracks.

; Pattern 6
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart7
	dw MoozinadedeNoel_Subsong0_Track5, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd7
; The tracks.

; Pattern 7
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart8
	dw MoozinadedeNoel_Subsong0_Track7, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd8
; The tracks.

; Pattern 8
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart9
	dw MoozinadedeNoel_Subsong0_Track8, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd9
; The tracks.

; Pattern 9
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart10
	dw MoozinadedeNoel_Subsong0_Track9, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd10
; The tracks.

; Pattern 10
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart11
	dw MoozinadedeNoel_Subsong0_Track8, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd11
; The tracks.

; Pattern 11
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart12
	dw MoozinadedeNoel_Subsong0_Track10, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd12
; The tracks.

; Pattern 12
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart13
	dw MoozinadedeNoel_Subsong0_Track5, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd13
; The tracks.

; Pattern 13
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart14
	dw MoozinadedeNoel_Subsong0_Track6, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd14
; The tracks.

; Pattern 14
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart15
	dw MoozinadedeNoel_Subsong0_Track5, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd15
; The tracks.

; Pattern 15
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart16
	dw MoozinadedeNoel_Subsong0_Track7, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd16
; The tracks.

; Pattern 16
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart17
	dw MoozinadedeNoel_Subsong0_Track11, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd17
; The tracks.

; Pattern 17
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart18
	dw MoozinadedeNoel_Subsong0_Track12, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd18
; The tracks.

; Pattern 18
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart19
	dw MoozinadedeNoel_Subsong0_Track11, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd19
; The tracks.

; Pattern 19
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart20
	dw MoozinadedeNoel_Subsong0_Track13, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd20
; The tracks.

; Pattern 20
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart21
	dw MoozinadedeNoel_Subsong0_Track14, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd21
; The tracks.

; Pattern 21
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart22
	dw MoozinadedeNoel_Subsong0_Track15, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd22
; The tracks.

; Pattern 22
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart23
	dw MoozinadedeNoel_Subsong0_Track16, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd23
; The tracks.

; Pattern 23
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart24
	dw MoozinadedeNoel_Subsong0_Track17, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd24
; The tracks.

; Pattern 24
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart25
	dw MoozinadedeNoel_Subsong0_Track2, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd25
; The tracks.

; Pattern 25
	db 1	; State byte.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart26
	dw MoozinadedeNoel_Subsong0_Track4, MoozinadedeNoel_Subsong0_Track1, MoozinadedeNoel_Subsong0_Track1
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd26
; The tracks.

	db 0	; End of the subsong.
MoozinadedeNoel_Subsong0DisarkPointerRegionStart27
	dw MoozinadedeNoel_Subsong0loop
MoozinadedeNoel_Subsong0DisarkPointerRegionEnd27

; The Tracks.
MoozinadedeNoel_Subsong0_Track0
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 63, 21	; Escaped note: 21.
	db 190	; Short wait: 3.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 190	; Short wait: 3.

	db 63, 21	; Escaped note: 21.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 190	; Short wait: 3.


MoozinadedeNoel_Subsong0_Track1
	db 61, 63	; Long wait: 64.


MoozinadedeNoel_Subsong0_Track2
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 190	; Short wait: 3.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 190	; Short wait: 3.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 63, 21	; Escaped note: 21.
	db 190	; Short wait: 3.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.


MoozinadedeNoel_Subsong0_Track3
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 22	; Escaped note: 22.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 22	; Escaped note: 22.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 4	; New instrument: 2.
	db 63, 19	; Escaped note: 19.

MoozinadedeNoel_Subsong0_Track4
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 4	; New instrument: 2.
	db 190	; Short wait: 3.

	db 133	; Note: 29.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 2	; New instrument: 1.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 190	; Short wait: 3.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.

MoozinadedeNoel_Subsong0_Track5
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 29	; Note: 53.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 21	; Note: 45.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 26	; Note: 50.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 19	; Note: 43.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 31	; Note: 55.
	db 29	; Note: 53.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 21	; Note: 45.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 29	; Note: 53.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 31	; Note: 55.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 154	; Note: 50.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track6
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 31	; Note: 55.
	db 29	; Note: 53.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 21	; Note: 45.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 26	; Note: 50.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 26	; Note: 50.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 149	; Note: 45.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 36	; Note: 60.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 26	; Note: 50.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 157	; Note: 53.
	db 2	; New instrument: 1.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 31	; Note: 55.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 26	; Note: 50.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 154	; Note: 50.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.
	db 149	; Note: 45.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track7
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 31	; Note: 55.
	db 33	; Note: 57.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 26	; Note: 50.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 157	; Note: 53.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 26	; Note: 50.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 24	; Note: 48.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 149	; Note: 45.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 36	; Note: 60.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 36	; Note: 60.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 166	; Note: 62.
	db 2	; New instrument: 1.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 43	; Note: 67.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 36	; Note: 60.
	db 38	; Note: 62.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 166	; Note: 62.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.
	db 161	; Note: 57.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track8
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 38	; Note: 62.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 41	; Note: 65.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 168	; Note: 64.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 43	; Note: 67.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 36	; Note: 60.
	db 38	; Note: 62.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 164	; Note: 60.
	db 2	; New instrument: 1.
	db 31	; Note: 55.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 41	; Note: 65.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 41	; Note: 65.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 166	; Note: 62.
	db 2	; New instrument: 1.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 36	; Note: 60.
	db 38	; Note: 62.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 169	; Note: 65.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 164	; Note: 60.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 166	; Note: 62.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track9
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 45	; Note: 69.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 41	; Note: 65.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 171	; Note: 67.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 38	; Note: 62.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 41	; Note: 65.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 161	; Note: 57.
	db 2	; New instrument: 1.
	db 36	; Note: 60.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 38	; Note: 62.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 45	; Note: 69.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 166	; Note: 62.
	db 2	; New instrument: 1.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 36	; Note: 60.
	db 38	; Note: 62.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 173	; Note: 69.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 171	; Note: 67.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.
	db 166	; Note: 62.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track10
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 63, 72	; Escaped note: 72.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 45	; Note: 69.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 169	; Note: 65.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 45	; Note: 69.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 43	; Note: 67.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 41	; Note: 65.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 161	; Note: 57.
	db 2	; New instrument: 1.
	db 36	; Note: 60.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 38	; Note: 62.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 41	; Note: 65.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 171	; Note: 67.
	db 2	; New instrument: 1.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 63, 72	; Escaped note: 72.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 74	; Escaped note: 74.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 72	; Escaped note: 72.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 74	; Escaped note: 74.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.
	db 173	; Note: 69.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track11
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 74	; Escaped note: 74.
	db 2	; Note: 26.
	db 45	; Note: 69.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 72	; Escaped note: 72.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 45	; Note: 69.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 77	; Escaped note: 77.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 173	; Note: 69.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 77	; Escaped note: 77.
	db 63, 77	; Escaped note: 77.
	db 63, 21	; Escaped note: 21.
	db 63, 76	; Escaped note: 76.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 74	; Escaped note: 74.
	db 2	; New instrument: 1.
	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 77	; Escaped note: 77.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 72	; Escaped note: 72.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 77	; Escaped note: 77.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 63, 74	; Escaped note: 74.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 74	; Escaped note: 74.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track12
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 81	; Escaped note: 81.
	db 63, 81	; Escaped note: 81.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 63, 74	; Escaped note: 74.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 77	; Escaped note: 77.
	db 2	; New instrument: 1.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 63, 81	; Escaped note: 81.
	db 63, 77	; Escaped note: 77.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 79	; Escaped note: 79.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 63, 74	; Escaped note: 74.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 77	; Escaped note: 77.
	db 2	; New instrument: 1.
	db 63, 77	; Escaped note: 77.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 79	; Escaped note: 79.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 45	; Note: 69.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 63, 72	; Escaped note: 72.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 74	; Escaped note: 74.
	db 2	; New instrument: 1.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 63, 81	; Escaped note: 81.
	db 63, 81	; Escaped note: 81.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 74	; Escaped note: 74.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 191, 77	; Escaped note: 77.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 63, 74	; Escaped note: 74.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.

MoozinadedeNoel_Subsong0_Track13
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 77	; Escaped note: 77.
	db 63, 77	; Escaped note: 77.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 63, 79	; Escaped note: 79.
	db 62	; Short wait: 1.

	db 63, 81	; Escaped note: 81.
	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 63, 77	; Escaped note: 77.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 81	; Escaped note: 81.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 77	; Escaped note: 77.
	db 63, 74	; Escaped note: 74.
	db 5	; Note: 29.
	db 190	; Short wait: 3.

	db 63, 72	; Escaped note: 72.
	db 63, 72	; Escaped note: 72.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 45	; Note: 69.
	db 45	; Note: 69.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 63, 72	; Escaped note: 72.
	db 62	; Short wait: 1.

	db 41	; Note: 65.
	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 38	; Note: 62.
	db 41	; Note: 65.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 74	; Escaped note: 74.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 63, 72	; Escaped note: 72.
	db 63, 72	; Escaped note: 72.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 164	; Note: 60.
	db 2	; New instrument: 1.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 38	; Note: 62.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.

MoozinadedeNoel_Subsong0_Track14
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 17	; Note: 41.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 19	; Note: 43.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 12	; Note: 36.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 2	; New instrument: 1.
	db 9	; Note: 33.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 12	; Note: 36.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 17	; Note: 41.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 12	; Note: 36.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 142	; Note: 38.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.


MoozinadedeNoel_Subsong0_Track15
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 19	; Note: 43.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 12	; Note: 36.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 9	; Note: 33.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 145	; Note: 41.
	db 2	; New instrument: 1.
	db 19	; Note: 43.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 19	; Note: 43.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 24	; Note: 48.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 154	; Note: 50.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 29	; Note: 53.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 7	; Note: 31.

MoozinadedeNoel_Subsong0_Track16
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 12	; Note: 36.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 152	; Note: 48.
	db 2	; New instrument: 1.
	db 21	; Note: 45.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 28	; Note: 52.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 31	; Note: 55.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 154	; Note: 50.
	db 2	; New instrument: 1.
	db 0	; Note: 24.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 157	; Note: 53.
	db 2	; New instrument: 1.

MoozinadedeNoel_Subsong0_Track17
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 2	; Note: 26.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 33	; Note: 57.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 29	; Note: 53.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 24	; Note: 48.
	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 147	; Note: 43.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 5	; Note: 29.
	db 62	; Short wait: 1.

	db 14	; Note: 38.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 19	; Note: 43.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 190	; Short wait: 3.

	db 7	; Note: 31.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 29	; Note: 53.
	db 63, 22	; Escaped note: 22.
	db 62	; Short wait: 1.

	db 21	; Note: 45.
	db 190	; Short wait: 3.

	db 24	; Note: 48.
	db 62	; Short wait: 1.

	db 26	; Note: 50.
	db 62	; Short wait: 1.


MoozinadedeNoel_Subsong0DisarkByteRegionEnd0

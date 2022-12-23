; Song New song in Lightweight format (V1).
; Generated by Arkos Tracker 2.

success_song_Start
success_song_StartDisarkGenerateExternalLabel

success_song_DisarkByteRegionStart0
	db "ATLW"	; Format marker (LightWeight).
	db 1	; Format version.
success_song_DisarkByteRegionEnd0
success_song_DisarkPointerRegionStart1
	dw success_song_FmInstrumentTable
	dw success_song_ArpeggioTable
	dw success_song_PitchTable
; Table of the Subsongs.
	dw success_song_Subsong0
success_song_DisarkPointerRegionEnd1

; The Arpeggio table.
success_song_ArpeggioTable
success_song_DisarkWordRegionStart2
	dw 0
success_song_DisarkWordRegionEnd2
success_song_DisarkPointerRegionStart3
success_song_DisarkPointerRegionEnd3

; The Pitch table.
success_song_PitchTable
success_song_DisarkWordRegionStart4
	dw 0
success_song_DisarkWordRegionEnd4
success_song_DisarkPointerRegionStart5
success_song_DisarkPointerRegionEnd5

; The FM Instrument table.
success_song_FmInstrumentTable
success_song_DisarkPointerRegionStart6
	dw success_song_FmInstrument0
	dw success_song_FmInstrument1
	dw success_song_FmInstrument2
	dw success_song_FmInstrument3
success_song_DisarkPointerRegionEnd6

success_song_DisarkByteRegionStart7
success_song_FmInstrument0
	db 255	; Speed.

success_song_FmInstrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
success_song_DisarkPointerRegionStart8
	dw success_song_FmInstrument0Loop	; Loops.
success_song_DisarkPointerRegionEnd8

success_song_FmInstrument1
	db 0	; Speed.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 4	; End the instrument.
success_song_DisarkPointerRegionStart9
	dw success_song_FmInstrument0Loop	; Loop to silence.
success_song_DisarkPointerRegionEnd9

success_song_FmInstrument2
	db 0	; Speed.

	db 189	; Volume: 15.
	db 24	; Arpeggio: 12.

	db 189	; Volume: 15.
	db 26	; Arpeggio: 13.

	db 189	; Volume: 15.
	db 32	; Arpeggio: 16.

	db 189	; Volume: 15.
	db 18	; Arpeggio: 9.

	db 61	; Volume: 15.

	db 189	; Volume: 15.
	db 18	; Arpeggio: 9.

	db 189	; Volume: 15.
	db 28	; Arpeggio: 14.

	db 4	; End the instrument.
success_song_DisarkPointerRegionStart10
	dw success_song_FmInstrument0Loop	; Loop to silence.
success_song_DisarkPointerRegionEnd10

success_song_FmInstrument3
	db 0	; Speed.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 4	; End the instrument.
success_song_DisarkPointerRegionStart11
	dw success_song_FmInstrument0Loop	; Loop to silence.
success_song_DisarkPointerRegionEnd11

success_song_DisarkByteRegionEnd7
success_song_Subsong0DisarkByteRegionStart0
; Song New song, Subsong 0 - Main - in Lightweight format (V1).
; Generated by Arkos Tracker 2.

success_song_Subsong0
	db 4	; Initial speed.

; The Linker.
; Pattern 0
	db 5	; State byte.
	db 31	; New height.
success_song_Subsong0DisarkPointerRegionStart1
	dw success_song_Subsong0_Track3, success_song_Subsong0_Track1, success_song_Subsong0_Track1
success_song_Subsong0DisarkPointerRegionEnd1
; The tracks.

; Pattern 1
success_song_Subsong0loop
	db 5	; State byte.
	db 63	; New height.
success_song_Subsong0DisarkPointerRegionStart2
	dw success_song_Subsong0_Track0, success_song_Subsong0_Track1, success_song_Subsong0_Track1
success_song_Subsong0DisarkPointerRegionEnd2
; The tracks.

; Pattern 2
	db 1	; State byte.
success_song_Subsong0DisarkPointerRegionStart3
	dw success_song_Subsong0_Track2, success_song_Subsong0_Track1, success_song_Subsong0_Track1
success_song_Subsong0DisarkPointerRegionEnd3
; The tracks.

	db 0	; End of the subsong.
success_song_Subsong0DisarkPointerRegionStart4
	dw success_song_Subsong0loop
success_song_Subsong0DisarkPointerRegionEnd4

; The Tracks.
success_song_Subsong0_Track0
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 156	; Note: 52.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 14	; Escaped note: 14.
	db 2	; New instrument: 1.
	db 166	; Note: 62.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 14	; Escaped note: 14.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 0	; Note: 24.
	db 156	; Note: 52.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 130	; Note: 26.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.


success_song_Subsong0_Track1
	db 61, 63	; Long wait: 64.


success_song_Subsong0_Track2
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 166	; Note: 62.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 166	; Note: 62.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 156	; Note: 52.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 19	; Escaped note: 19.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 14	; Escaped note: 14.
	db 2	; New instrument: 1.
	db 156	; Note: 52.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 14	; Escaped note: 14.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 166	; Note: 62.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 16	; Escaped note: 16.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 7	; Note: 31.

success_song_Subsong0_Track3
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 168	; Note: 64.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 62	; Short wait: 1.

	db 63, 21	; Escaped note: 21.
	db 156	; Note: 52.
	db 6	; New instrument: 3.
	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 16	; Escaped note: 16.
	db 62	; Short wait: 1.

	db 63, 16	; Escaped note: 16.
	db 159	; Note: 55.
	db 6	; New instrument: 3.
	db 191, 16	; Escaped note: 16.
	db 2	; New instrument: 1.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 19	; Escaped note: 19.
	db 161	; Note: 57.
	db 6	; New instrument: 3.
	db 191, 19	; Escaped note: 19.
	db 2	; New instrument: 1.
	db 62	; Short wait: 1.

	db 63, 19	; Escaped note: 19.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 128	; Note: 24.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 191, 21	; Escaped note: 21.
	db 2	; New instrument: 1.
	db 164	; Note: 60.
	db 6	; New instrument: 3.
	db 135	; Note: 31.
	db 4	; New instrument: 2.
	db 62	; Short wait: 1.

	db 7	; Note: 31.
	db 61, 32	; Long wait: 33.


success_song_Subsong0DisarkByteRegionEnd0
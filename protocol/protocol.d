proctype A
	state   1 -(tr  18)-> state   2  [id   0 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:5 => mt = ((mt+1)%4)
	state   2 -(tr  19)-> state   4  [id   1 tp   4] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:6 => out!mt,1
	state   4 -(tr  20)-> state  11  [id   3 tp 503] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:8 => in?vr
	state  11 -(tr  21)-> state   1  [id   4 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:10 => ((vr==1))
	state  11 -(tr  22)-> state  13  [id   6 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:10 => ((vr==0))
	state  11 -(tr  23)-> state  21  [id   8 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:10 => printf('MSC: AERROR1\n')
	state  13 -(tr  24)-> state   4  [id  12 tp   4] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:14 => out!mt,1
	state  21 -(tr  27)-> state  15  [id  20 tp   4] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:21 => out!mt,0
	state  15 -(tr  25)-> state  19  [id  14 tp 503] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:16 => in?vr
	state  19 -(tr   1)-> state   1  [id  15 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:18 => goto S1
	state  19 -(tr  26)-> state  21  [id  16 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:18 => printf('MSC: AERROR2\n')
proctype B
	state   6 -(tr   9)-> state  13  [id  28 tp 505] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:32 => in?mr,ar
	state  13 -(tr  10)-> state   2  [id  29 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:34 => ((ar==1))
	state  13 -(tr  11)-> state  15  [id  31 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:34 => ((ar==0))
	state  13 -(tr  12)-> state  23  [id  33 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:34 => printf('MSC: ERROR1\n')
	state   2 -(tr   6)-> state   3  [id  24 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:28 => assert((mr==((lmr+1)%4)))
	state   3 -(tr   7)-> state   4  [id  25 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:29 => lmr = mr
	state   4 -(tr   8)-> state   6  [id  26 tp   6] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:30 => out!1
	state  15 -(tr  13)-> state   6  [id  37 tp   6] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:38 => out!1
	state  23 -(tr  16)-> state  17  [id  45 tp   6] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:45 => out!0
	state  17 -(tr  14)-> state  21  [id  39 tp 505] [----G] /home/martin/Desktop/Artifacts/protocol/protocol.pml:40 => in?mr,ar
	state  21 -(tr   1)-> state   2  [id  40 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:42 => goto S1
	state  21 -(tr  15)-> state  23  [id  41 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:42 => printf('MSC: ERROR2\n')
init
	state   3 -(tr   3)-> state   2  [id  48 tp   2] [A---L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:52 => (run A(a2b,b2a))
	state   2 -(tr   4)-> state   4  [id  49 tp   2] [----L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:53 => (run B(b2a,a2b))
	state   4 -(tr   5)-> state   0  [id  51 tp 3500] [--e-L] /home/martin/Desktop/Artifacts/protocol/protocol.pml:55 => -end-

Transition Type: A=atomic; D=d_step; L=local; G=global
Source-State Labels: p=progress; e=end; a=accept;

pan: elapsed time 1.72e+07 seconds
pan: rate         0 states/second

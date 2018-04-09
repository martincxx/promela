#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:52 - [(run A(a2b,b2a))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, ((P2 *)this)->a2b, ((P2 *)this)->b2a)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:53 - [(run B(b2a,a2b))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, ((P2 *)this)->b2a, ((P2 *)this)->a2b)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:55 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC B */
	case 6: // STATE 2 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:28 - [assert((mr==((lmr+1)%4)))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		spin_assert((((int)((P1 *)this)->mr)==((((int)((P1 *)this)->lmr)+1)%4)), "(mr==((lmr+1)%4))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:29 - [lmr = mr] (0:0:1 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->lmr);
		((P1 *)this)->lmr = ((int)((P1 *)this)->mr);
#ifdef VAR_RANGES
		logval("B:lmr", ((int)((P1 *)this)->lmr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:30 - [out!1] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(((P1 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->out, 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 6 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:32 - [in?mr,ar] (0:0:2 - 0)
		reached[1][6] = 1;
		if (q_len(((P1 *)this)->in) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->mr);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->ar);
		;
		((P1 *)this)->mr = qrecv(((P1 *)this)->in, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("B:mr", ((int)((P1 *)this)->mr));
#endif
		;
		((P1 *)this)->ar = qrecv(((P1 *)this)->in, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("B:ar", ((int)((P1 *)this)->ar));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)this)->in);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->mr)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->ar)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 10: // STATE 7 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:34 - [((ar==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((int)((P1 *)this)->ar)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ar */  (trpt+1)->bup.oval = ((P1 *)this)->ar;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->ar = 0;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:35 - [((ar==0))] (0:0:1 - 0)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((int)((P1 *)this)->ar)==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: ar */  (trpt+1)->bup.oval = ((P1 *)this)->ar;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->ar = 0;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:36 - [printf('MSC: ERROR1\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		Printf("MSC: ERROR1\n");
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 15 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:38 - [out!1] (0:0:0 - 0)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(((P1 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->out, 0, 1, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 17 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:40 - [in?mr,ar] (0:0:3 - 0)
		reached[1][17] = 1;
		if (q_len(((P1 *)this)->in) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->mr);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->ar);
		;
		((P1 *)this)->mr = qrecv(((P1 *)this)->in, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("B:mr", ((int)((P1 *)this)->mr));
#endif
		;
		((P1 *)this)->ar = qrecv(((P1 *)this)->in, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("B:ar", ((int)((P1 *)this)->ar));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)this)->in);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->mr)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->ar)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: ar */  (trpt+1)->bup.ovals[2] = ((P1 *)this)->ar;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->ar = 0;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 19 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:43 - [printf('MSC: ERROR2\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][19] = 1;
		Printf("MSC: ERROR2\n");
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 23 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:45 - [out!0] (0:0:0 - 0)
		IfNotBlocked
		reached[1][23] = 1;
		if (q_full(((P1 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P1 *)this)->out);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P1 *)this)->out, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 17: // STATE 25 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:47 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC A */
	case 18: // STATE 1 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:5 - [mt = ((mt+1)%4)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->mt);
		((P0 *)this)->mt = ((((int)((P0 *)this)->mt)+1)%4);
#ifdef VAR_RANGES
		logval("A:mt", ((int)((P0 *)this)->mt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:6 - [out!mt,1] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mt)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, ((int)((P0 *)this)->mt), 1, 2);
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 4 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:8 - [in?vr] (0:0:1 - 0)
		reached[0][4] = 1;
		if (q_len(((P0 *)this)->in) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->vr);
		;
		((P0 *)this)->vr = qrecv(((P0 *)this)->in, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("A:vr", ((int)((P0 *)this)->vr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->in);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->vr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 5 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:10 - [((vr==1))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->vr)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: vr */  (trpt+1)->bup.oval = ((P0 *)this)->vr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->vr = 0;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 7 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:11 - [((vr==0))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)((P0 *)this)->vr)==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: vr */  (trpt+1)->bup.oval = ((P0 *)this)->vr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->vr = 0;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 9 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:12 - [printf('MSC: AERROR1\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		Printf("MSC: AERROR1\n");
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 13 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:14 - [out!mt,1] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mt)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, ((int)((P0 *)this)->mt), 1, 2);
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 15 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:16 - [in?vr] (0:0:2 - 0)
		reached[0][15] = 1;
		if (q_len(((P0 *)this)->in) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->vr);
		;
		((P0 *)this)->vr = qrecv(((P0 *)this)->in, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("A:vr", ((int)((P0 *)this)->vr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->in);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->vr)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: vr */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->vr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->vr = 0;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 17 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:19 - [printf('MSC: AERROR2\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("MSC: AERROR2\n");
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 21 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:21 - [out!mt,0] (0:0:0 - 0)
		IfNotBlocked
		reached[0][21] = 1;
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mt)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, ((int)((P0 *)this)->mt), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 23 - /home/martin/Desktop/Artifacts/protocol/protocol.pml:23 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


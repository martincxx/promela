	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC B */
;
		;
		
	case 7: // STATE 3
		;
		((P1 *)this)->lmr = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
		_m = unsend(((P1 *)this)->out);
		;
		goto R999;

	case 9: // STATE 6
		;
		XX = 1;
		unrecv(((P1 *)this)->in, XX-1, 0, ((int)((P1 *)this)->mr), 1);
		unrecv(((P1 *)this)->in, XX-1, 1, ((int)((P1 *)this)->ar), 0);
		((P1 *)this)->mr = trpt->bup.ovals[0];
		((P1 *)this)->ar = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 7
		;
	/* 0 */	((P1 *)this)->ar = trpt->bup.oval;
		;
		;
		goto R999;

	case 11: // STATE 9
		;
	/* 0 */	((P1 *)this)->ar = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 13: // STATE 15
		;
		_m = unsend(((P1 *)this)->out);
		;
		goto R999;

	case 14: // STATE 17
		;
	/* 0 */	((P1 *)this)->ar = trpt->bup.ovals[2];
		XX = 1;
		unrecv(((P1 *)this)->in, XX-1, 0, ((int)((P1 *)this)->mr), 1);
		unrecv(((P1 *)this)->in, XX-1, 1, ((int)((P1 *)this)->ar), 0);
		((P1 *)this)->mr = trpt->bup.ovals[0];
		((P1 *)this)->ar = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 16: // STATE 23
		;
		_m = unsend(((P1 *)this)->out);
		;
		goto R999;

	case 17: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC A */

	case 18: // STATE 1
		;
		((P0 *)this)->mt = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 2
		;
		_m = unsend(((P0 *)this)->out);
		;
		goto R999;

	case 20: // STATE 4
		;
		XX = 1;
		unrecv(((P0 *)this)->in, XX-1, 0, ((int)((P0 *)this)->vr), 1);
		((P0 *)this)->vr = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 5
		;
	/* 0 */	((P0 *)this)->vr = trpt->bup.oval;
		;
		;
		goto R999;

	case 22: // STATE 7
		;
	/* 0 */	((P0 *)this)->vr = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 24: // STATE 13
		;
		_m = unsend(((P0 *)this)->out);
		;
		goto R999;

	case 25: // STATE 15
		;
	/* 0 */	((P0 *)this)->vr = trpt->bup.ovals[1];
		XX = 1;
		unrecv(((P0 *)this)->in, XX-1, 0, ((int)((P0 *)this)->vr), 1);
		((P0 *)this)->vr = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 27: // STATE 21
		;
		_m = unsend(((P0 *)this)->out);
		;
		goto R999;

	case 28: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}


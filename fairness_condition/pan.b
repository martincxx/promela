	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p2 */
;
		;
		;
		;
		;
		;
		
	case 6: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		
	case 8: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC env */

	case 9: // STATE 1
		;
		now.incr = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 2
		;
		now.incr = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC counter */
;
		;
		
	case 13: // STATE 2
		;
		now.count = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;
	}


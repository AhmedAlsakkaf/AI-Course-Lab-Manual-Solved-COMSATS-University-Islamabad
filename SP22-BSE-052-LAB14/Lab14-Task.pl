domains
	Day = integer
	Month = integer

predicates
	nondeterm	start
	nondeterm	check_sign(integer,integer)
	nondeterm	day(integer)
	nondeterm	month(integer)
	nondeterm	check_day(integer)
	nondeterm	check_month(integer)
	nondeterm	aries
	nondeterm	taurus
	nondeterm	gemini
	nondeterm	cancer
	nondeterm	leo
	nondeterm	virgo
	nondeterm	libra
	nondeterm	scorpio
	nondeterm	sagitarius
	nondeterm	capricorn
	nondeterm	acquarius
	nondeterm	pisces	
clauses
	day(1).day(2).day(3).day(4).day(5).day(6).day(7).day(8).day(9).day(10).
	day(11).day(12).day(13).day(14).day(15).day(16).day(17).day(18).day(19).day(20).
	day(21).day(22).day(23).day(24).day(25).day(26).day(27).day(28).day(29).day(30).day(31).
	
	month(1).month(2).month(3).month(4).month(5).month(6).month(7).month(8).month(9).month(10).month(11).month(12).
	
	start:-
		write("What Date of the Month You were Born:\n"),readint(Day),
		write("What Month of the Year You were Born:\n"),readint(Month),
		check_day(Day),check_month(Month),check_sign(Day,Month).

	check_day(Day):-
		Day < 0,write("date is incorrect\n");
		Day > 31,write("date is incorrect\n");
		!.
		
	check_month(Month):-
		Month < 0,write("month is incorrect\n"); 
		Month > 12,write("month is incorrect\n");
		!.	
	
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 21,Month = 3,aries;
		day(Day),month(Month),Day <= 19,Month = 4,aries.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 20,Month = 4,taurus;
		day(Day),month(Month),Day <= 20,Month = 5,taurus.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 21,Month = 5,gemini;
		day(Day),month(Month),Day <= 22,Month = 6,gemini.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 21,Month = 6,cancer;
		day(Day),month(Month),Day <= 22,Month = 7,cancer.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 23,Month = 7,leo;
		day(Day),month(Month),Day <= 22,Month = 8,leo.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 23,Month = 8,virgo;
		day(Day),month(Month),Day <= 22,Month = 9,virgo.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 23,Month = 9,libra;
		day(Day),month(Month),Day <= 22,Month = 10,libra.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 23,Month = 10,scorpio;
		day(Day),month(Month),Day <= 21,Month = 11,scorpio.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 22,Month = 11,sagitarius;
		day(Day),month(Month),Day <= 21,Month = 12,sagitarius.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 22,Month = 12,capricorn;
		day(Day),month(Month),Day <= 19,Month = 1,capricorn.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 20,Month = 1,acquarius;
		day(Day),month(Month),Day <= 18,Month = 2,acquarius.
		
	check_sign(Day,Month):-
		day(Day),month(Month),Day >= 9,Month = 2,pisces;
		day(Day),month(Month),Day <= 20,Month = 3,pisces.
		
	aries:-
		write("Hello .... u r an aries\n").
	taurus:-
		write("Hello .... u r taurus\n").
	gemini:-
		write("Hello .... u r gemini\n").
	cancer:-
		write("Hello .... u r cancer\n").
	leo:-
		write("Hello .... u r leo\n").
	virgo:-
		write("Hello .... u r virgo\n").
	libra:-
		write("Hello .... u r libra\n").
	scorpio:-
		write("Hello .... u r scorpio\n").
	sagitarius:-
		write("Hello .... u r sagitarius\n").
	capricorn:-
		write("Hello .... u r capricorn\n").
	acquarius:-
		write("Hello .... u r acquarius\n").
	pisces:-
		write("Hello .... u r pisces\n").

goal
	start.

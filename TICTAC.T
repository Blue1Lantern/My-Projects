setscreen ("graphics:v16,noecho")
var updown, btn, x, y, match : int
var over : boolean := true
var xtotal, ototal : int := 0
var test : array 1 .. 3, 1 .. 3 of string
var taken : array 1 .. 3, 1 .. 3 of boolean
var whowon : string := "noone"
var turns : boolean := false
match := - 1
procedure check (z : string)
    for i : 1 .. 3
	if test (i, 1) = z and test (i, 2) = z and test (i, 3) = z or
		test (1, i) = z and test (2, i) = z and test (3, i) = z then
	    over := false
	    whowon := z
	end if
    end for
    if test (1, 1) = z and test (2, 2) = z and test (3, 3) = z then
	over := false
	whowon := z

    end if
    if test (1, 3) = z and test (2, 2) = z and test (3, 1) = z then
	over := false
	whowon := z

    end if
end check
procedure score
    locate (maxrow - 5, 1)
    put "X has won ", xtotal, " games"
    locate (maxrow - 5, maxcol - 16)
    put "O has won ", ototal, " games"
end score
procedure reset
    whowon := "noone"
    for i : 1 .. 3
	for j : 1 .. 3
	    test (i, j) := "a"
	end for
    end for
    cls
    score
    for i : 1 .. 3
	for j : 1 .. 3
	    taken (i, j) := false
	end for
    end for
    for i : 200 .. 400 by 100
	for j : 100 .. 300 by 100
	    drawbox (i, j, i + 100, j + 100, 4)
	end for
    end for
end reset

procedure drawx (i, j : int)

    drawfillbox (i, j, i + 100, j + 100, 15)
    drawline (i, j, i + 45, j + 50, 0)
    drawline (i + 45, j + 50, i + 0, j + 100, 0)
    drawline (i + 100, j + 0, i + 55, j + 50, 0)
    drawline (i + 55, j + 50, i + 100, j + 100, 0)
    drawline (i + 0, j + 100, i + 50, j + 55, 0)
    drawline (i + 50, j + 55, i + 100, j + 100, 0)
    drawline (i + 0, j + 0, i + 50, j + 45, 0)
    drawline (i + 50, j + 45, i + 100, j + 0, 0)
    drawbox (i, j, i + 100, j + 100, 0)

    drawfill (i + 50, j + 1, 0, 0)
    drawfill (i + 50, j + 99, 0, 0)
    drawfill (i + 5, j + 50, 0, 0)
    drawfill (i + 99, j + 10, 0, 0)
    drawbox (i, j, i + 100, j + 100, 4)
end drawx

procedure drawo (i, j : int)

    drawfilloval (i + 50, j + 50, 49, 49, 15)
    drawfilloval (i + 50, j + 50, 39, 39, 0)
end drawo


procedure turn (q : int)
    if q mod 2 = 0 then
	locate (1, 1)
	put "X's Turn"
    else
	locate (1, 1)
	put "O's Turn"
    end if
    match := - 1
    loop

	buttonwait ("down", x, y, btn, updown)
	for i : 200 .. 400 by 100
	    for j : 100 .. 300 by 100
		if x > i and x < i + 100 and y > j and y < j + 100
			and taken ( (i div 100) - 1, j div 100) not= true
			then
		    if q mod 2 = 0 then
			taken ( (i div 100) - 1, j div 100) := true
			test ( (i div 100) - 1, j div 100) := "X"
			check ("X")
			drawx (i, j)
			x := 0
			y := 0
		    else
			taken ( (i div 100) - 1, j div 100) := true
			test ( (i div 100) - 1, j div 100) := "O"
			drawo (i, j)
			check ("O")
		    end if
		    match := 7 - i
		end if
	    end for
	end for
	exit when match not= - 1
	sound (440, 200)
    end loop
end turn
var ans : string
var l : int
var a : int := 1
procedure playgame
    if turns = true then
	a := 2
    else
	a := 1
    end if
    for q : a .. a + 8
if q=3 then
for j:1..5
buttonwait ("down", x, y, btn, updown)
end for
end if
if over = true then
	    l := q
	    turn (q)
	end if

    end for

    over := true
    if turns = false then
	turns := true
    else
	turns := false
    end if
end playgame
var prompt : string (1)

loop
    reset

    playgame

    colour (12)
    locate (maxrow - 3, 1)
    if whowon = "noone" then
	put "No one won that game!" ..
    else
	put whowon, " won the game!" ..
	if whowon = "X" then
	    xtotal += 1
	else
	    ototal += 1
	end if
    end if
    put ""
    loop
	exit when not hasch
	getch (prompt)
    end loop

    put "Press any key to continue (q to quit)"
    getch (prompt)
    exit when prompt = "q"

    colour (7)
end loop
cls
locate (1, 1)
put "Thank you for playing Paul's Tic Tac Toe"


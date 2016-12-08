/* FACTS */

book(illiad, homer, study, 500).
book(c, richie, study, 150).
book(nt_bible, sams, reference, 480).
book(monty_python, cleese, comedy, 300).
book(emma, austen, fiction, 300).
book(whatever, me, drama, 200).

/*Code*/

buildLibrary(Lib) :- findall(book(Title, Author, Genre, Size), book(Title, Author,
Genre, Size), Lib).

is_holiday(book(_, _, X, Y)) :- X \== study, X \== reference, Y < 400.
holiday(B, [B | _]) :- is_holiday(B).
holiday(B, [_ | T]) :- holiday(B,T).


is_revision(book(_, _, X, Y)) :- X == study; X == reference, Y > 300.
revision(B, [B | _]) :- is_revision(B).
revision(B, [_ | T]) :- revision(B,T).


is_literary(book(_, _, X, _)) :- (X == drama).
literary(B, [B | _]) :- is_literary(B).
literary(B, [_ | T]) :- literary(B,T).

is_leisure(book(_, _, X, _)) :- (X == comedy; X == fiction).
leisure(B, [B | _]) :- is_leisure(B).
leisure(B, [_ | T]) :- leisure(B,T).
DinnerMurderGames
=================

This is a LeTeX template to writer dinner murder games.


What's in this package?
-----------------------
This git repository does *not* contain a full game, instead it contain the template to help authoring such a game.

What do I need to do?
---------------------
The following LeTeX have to be written for each suspect (person1, person2, ...):

- `person1_general.tex`: public character description

- `person1_secret.tex`: secret background information for each player

- `person1_R1.tex`, `person1_R2.tex` and `person1_R3.tex`: additional info for this plater in round 1,2,3

The following files are part of every character booklet:

- `intro.tex`: Introduction, setting the scene

- `R1_discussion.tex`, `R2_discussion.tex` and `R3_discussion.tex`: dialogues to start eac hround

- `motives.tex`: Summary of motives before guessing the killer

- `solution.tex`: Solution to the case

Using bash shell scripts these tex files are input into the character booklet files to generate the finel pdfs.

- `Personen.tex`: Summary of all suspects. Can be distributed before the game. Needs to be edited with the names of all suspects.

- `rolebook_XXX.tex`: Template for rolebook. Edit with names of all suspects and and title pictures etc.

- `rolebook.sh` replaces all `XXX` wiht the names given. Script needs to be eited to contain those names. Additionally, a fullname ist is given to replace all `AAA` in the template. The `XXX` is the same identifier as used in the file names. `AAA` could be a much longer name.
This script used psnub to sort pages for booklet printing. While the page ordering might look erratic in the beginning, it will all turn out well, if printed and folded in the middle.
Atttention: The scipt is set up for european A4 and A5 paper formates!

- `Personen.sh` makes and formates summary of all suspects.

- `control.sh` merges most of the tex files inot a single ascii file. Helps to proofread the larger number of short input files.

DinnerMurderGames
=================

This is a LaTeX template to write dinner murder games.


What's in this package?
-----------------------
This git repository does *not* contain a full game, instead it contains the template to help authoring such a game.

What do I need to do?
---------------------
The following LaTeX files have to be written for each suspect (person1, person2, ...):

- `person1_general.tex`: public character description

- `person1_secret.tex`: secret background information for each player

- `person1_R1.tex`, `person1_R2.tex`, and `person1_R3.tex`: additional info for each player in round 1,2,3

The following files will be part of every character booklet:

- `intro.tex`: Introduction setting the scene

- `R1_discussion.tex`, `R2_discussion.tex`, and `R3_discussion.tex`: dialogues to start each round

- `motives.tex`: Summary of motives before guessing the murderer

- `solution.tex`: Solution to the case

Using bash shell scripts these tex files are combined to form the character booklet tex files which in turn 
are used to generate the final pdfs.

- `Personen.tex`: Summary of all suspects. Can be distributed before the game. This tex file needs to be edited with the names of all suspects.

- `rolebook_XXX.tex`: Template for rolebook. Edit with names of all suspects and to customize the title.

- `rolebook.sh` replaces all occurences of the string `XXX` with the shorthand character names. This script needs to be edited to contain those names. Additionally, a each character can have a full name, which will replace all occurences of the string `AAA` in the template. The `XXX` is the same identifier as used in the file names. `AAA` could be a much longer name.
This script uses `psnub` to sort pages for booklet printing. While the page ordering might look erratic in the beginning, it will all turn out well, if printed and folded in the middle.
Atttention: The scipt is set up for european A4 and A5 paper formates!

- `Personen.sh` makes and formats the summary of all suspects.

- `control.sh` merges most of the tex files into a single ascii file. Helps to proofread a large number of short input files.

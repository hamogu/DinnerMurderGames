DinnerMurderGames
=================

Dies ist ein LaTeX template, um Dinner Murder Games zu schreiben.

Was ist ein DinnerMurderGame?
-----------------------------
Bei dieser Art von Spiel trifft sich eine Gruppe von Freunden, um in bester Tradition des englischen Kriminalromans einen Mord oder ein anderes Verbrechen aufzuklären. Jeder Spieler verkörpert eine Rolle. Jeder ist zugleich Detektiv und Verdächtiger. 

Im Laufe von 2-3 Stunden (z.B. während eines längeren Abendessens) unterhalten sich die Spieler in ihren Rollen, tauschen Informationen aus, sichten Beweise und versuchen den Täter zu identifizieren.

Am Anfang des Spiels beschreibt ein Detektiv oder Kommisar die Szene, die Spieler lesen diese Beschreibung in einem Rollenbuch (in kommerziellen Spielen dieser Art wird die oft durch eine DVD oder ein Video realisiert).

Jeder Spieler bekommt ein persönliches Rollenbuch. Einige Elemente (z.B. die Einleitung) sind allen Büchern gemein, andere betreffen nur einen bestimmten Spieler und beschreiben z.B. seine kriminelle Vergangenheit oder seine Beteiligung an dem Verbrechen. Durch gegenseitiges Befragen versuchen die Spieler alle Sachverhalte zu ermitteln und am Ende den richtigen Täter zu erraten.

Das Spiel ist in Runden eingeteilt und in jeder Runde erhält jeder Spieler neue Informationen, die dem Fall eine neue Wendung geben können, etwa ein Alibi entkräften.

Was bietet deses Packet?
------------------------
Diese git repository enthält *kein* fertiges Spiel, sondern ein LaTeX templete, dass es erleichtert ein solches Spiel zu entwerfen.

Für jeden Beteiligen müssen folgende LaTeX Dateien angelegt werden (person1, person2, etc):
- `person1_allg.tex`: Öffentliche Beschreibung des Charakters - ist für jeden Spieler zugänglich
- `person1_geheim.tex`: Geheime Hintergrundinformationen für nur diesen Spieler
- `person1_R1.tex`, `person1_R2.tex` und `person1_R3.tex`: Zusätzliche Information für diesen Spieler in Runde 1,2,3

Folgenden LaTeX Dateien werden in jeden Rollenbuch eingebunden:
- `Einleitung.tex`: Beschreibung der Tatszene etc.
- `R1_Gespraech.tex`, `R2_Gespreach.tex` und `R3_Gespreach.tex`: Vorgegebene Dialoge zu Beginn jeder Runde, um die Diskussion in Gang zu bringen.
- `Motive.tex`: Zusammenfassung aller Motive am Ende bevor alle Spieler ihr Votum abgeben
- `Tathergang.tex`: Auflösung des Falls

Mit Hilfe von Shell scripten werden dann aus diesen individuellen Dateien und folgenden Templates die fertigen Rollenbücher erzeugt:
- `Personen.tex`: Zusammenfassung aller öffentlichen Personenbeschreibungen. Kann vor dem Spiel ausgegeben werden und z.B. Hinweise für eine geeignete Verkleidung enthalten.Diese Datei muss mit den Namen aller Verdächtigen editiert werden.
- `Rollenbuch_XXX.tex`: Template für das Rollenbuch. In diese LaTeX Datei können z.B. Titelbilder etc eingebunden werden.

- `Rollenbuch.sh` ersetzt alle `XXX`durch die Namen der Personen. Dazu muss `Rollenbuch.sh` editiert werden. Dabei ist `XXX` das Kürzel, für die Bennenung der Dateien verwendet wurde. `AAA` ist eine Langversion diese Namen, wo wie er im Rollenbuch erscheinen soll. `XXX` und `AAA` können durch die selben Namen ersetzt werden, wenn der volle Name im Dateinamen verwendet wird. Diese scipt verwendet LaTeX, dvipdv, psnub and ps2pdf, um pdf Dateien zu zerzeugen, die nach dem Druck in der Mitte gefaltet werden können und ein Buch ergeben (im pdf sieht das erst mal zo aus, als ob die Seitenreihenfolge durcheinander geraten ist, aber das passt nach dem Falten genau.). 
- `Personen.sh` erzeugt eine Zusammenfassung aller Personen. Dieses script muss editiert werden mit den Namen aller Beteiligten.
- `kontrolle.sh` erzeugt eine Datei, die alle geschreibenen Texte genau einmal enthält. Das ist hilfreich zum Korrekturlesen. Dieses script muss editiert werden mit den Namen aller Beteiligten.

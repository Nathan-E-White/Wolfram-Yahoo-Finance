(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

(* TODO: usage *)

Begin["`BuildYFSymbolInstitutionalHoldersURL`"];

BuildYFSymbolInstitutionalHoldersURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "holders"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolInstitutionalHoldersURL` *)];
EndPackage[(* YahooFinanceTools` *)];

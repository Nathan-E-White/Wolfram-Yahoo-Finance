(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolAnalysisURL /: BuildYFSymbolAnalysisURL::usage = "BuildYFSymbolAnalysisURL[...] creates a URL for accessing the Analysis tab of a financial instrument on Yahoo Finance.";

Begin["`BuildYFSymbolAnalysisURL`"];

BuildYFSymbolAnalysisURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "analysis"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolAnalysisURL` *)];
EndPackage[(* YahooFinanceTools` *)];
(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolHistoryURL::usage = "BuildYFSymbolHistoryURL[sym] creates a URL for accessing the symbol history tab for a financial instrument on Yahoo Finance.";

Begin["`BuildYFSymbolHistoryURL`"];

BuildYFSymbolHistoryURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "history"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolHistoryURL` *)];
EndPackage[(* YahooFinanceTools` *)];
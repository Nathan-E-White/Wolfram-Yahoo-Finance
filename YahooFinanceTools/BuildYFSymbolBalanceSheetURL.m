(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolBalanceSheetURL::usage = "BuildYFSymbolBalanceSheetURL[...] creates a URL for accessing the balance sheet tab for a financial instrument on Yahoo Finance.";

Begin["`BuildYFSymbolBalanceSheetURL`"];

BuildYFSymbolBalanceSheetURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "balance-sheet"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolBalanceSheetURL` *)];
EndPackage[(* YahooFinanceTools` *)];
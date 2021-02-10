(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolCashFlowURL::usage = "BuildYFSymbolCashFlowURL[...] creates a URL for accessing the Cash Flow tab for a financial instrument on Yahoo Finance.";

Begin["`BuildYFSymbolCashFlowURL`"];

BuildYFSymbolCashFlowURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "cash-flow"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolCashFlowURL` *)];
EndPackage[(* YahooFinanceTools` *)];
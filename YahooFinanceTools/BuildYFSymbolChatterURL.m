(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolChatterURL::usage = "BuildYFSymbolChatterURL[...] creates a URL for accessing the Chat tab for a Financial Instrument on Yahoo Finance.";

Begin["`BuildYFSymbolChatterURL`"];

BuildYFSymbolChatterURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym, "community"},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolChatterURL` *)];
EndPackage[(* YahooFinanceTools` *)];

(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: Nathan White, PhD *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolSummaryURL::usage = "Creates a URL to access a financial instruments Yahoo Finance symbol summary page.";

Begin["`BuildYFSymbolSummaryURL`"];

BuildYFSymbolSummaryURL[sym_String] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "quote", sym},
  "Query" -> {"p" -> sym},
  "Fragment" -> None
|>];

End[(* `BuildYFSymbolSummaryURL` *)];
EndPackage[(* YahooFinanceTools` *)];

(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFSymbolSearchURL::usage = "BuildYFSymbolSearchURL[sym, opts...] creates a Yahoo Finance URL for executing a symbol search.";

Begin["`BuildYFSymbolSearchURL`"];

Attributes[BuildYFSymbolSearchURL] = { Flat, HoldAll, Listable };
Options[BuildYFSymbolSearchURL] = {
  "SecureSocket" -> True,
  "User" -> Automatic,
  "Port" -> Automatic,
  "ValidateURL" -> True
};

BuildYFSymbolSearchURL[sym_String, o : OptionsPattern[]] := With[{
  opts = <|
    "ValidateURL" -> OptionValue["ValidateURL"];
  |>
}, Block[{
  url
},

  url = URLBuild[<|
    "Scheme" -> "https",
    "User" -> None,
    "Domain" -> "finance.yahoo.com",
    "Port" -> None,
    "Path" -> {"", "quote", sym},
    "Query" -> {"p" -> sym, ".tsrch" -> "fin-srch"},
    "Fragment" -> None
  |>];

  Return[url];

]];

End[(* `BuildYFSymbolSearchURL` *)];
EndPackage[(* YahooFinanceTools` *)];

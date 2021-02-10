(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

BuildYFDownloadHistoricalDataURL::usage = "BuildYFDownloadHistoricalDataURL[..] creates a URL for downloading historical data from Yahoo Finance.";

Begin["`BuildYFDownloadHistoricalDataURL`"];

BuildYFDownloadHistoricalDataURL[sym_String, start_, end_] := URLBuild[<|
  "Scheme" -> "https",
  "User" -> None,
  "Domain" -> "query1.finance.yahoo.com",
  "Port" -> None,
  "Path" -> {"", "v7", "finance", "download", sym},
  "Query" -> {"period1" -> UnixTime[start], "period2" -> UnixTime[end], "interval" -> "1d", "events" -> "history", "includeAdjustedClose" -> "true"},
  "Fragment" -> None
|>];

End[(* `BuildYFDownloadHistoricalDataURL` *)];
EndPackage[(* YahooFinanceTools` *)];
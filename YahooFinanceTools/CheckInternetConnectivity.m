(* Mathematica Source File *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: nwnn4 *)
(* :Date: 2021-02-10 *)

BeginPackage["YahooFinanceTools`"];

CheckInternetConnectivity /: CheckInternetConnectivity::usage = "CheckInternetConnectivity[opts] checks if the Wolfram Language has access to the internet.";
$InternetConnectivity::usage = "A global flag set by the CheckInternetConnectivity function.";

Begin["`CheckInternetConnectivity`"];

Attributes[CheckInternetConnectivity] = { Flat, HoldAll};

Options[CheckInternetConnectivity] = { "BuildReport" -> True };

CheckInternetConnectivity[o : OptionsPattern[]] := With[{}, Module[{
  machineDoms, machineAddr, networkIntr, dpr, dni, report = <||>
},

  If[Not[$AllowInternet], Throw[,]];
  If[Not[$NetworkConnected], Throw[,]];

  machineDoms = $MachineDomains;
  machineAddr = $MachineAddresses;
  networkIntr = $NetworkInterfaces;

  dpr = $DefaultProxyRules;
  AssociateTo[report, Rule["DefaultProxyRule", dpr]];

  dni = $DefaultNetworkInterface;
  AssociateTo[report, Rule["DefaultNetworkInterface", dni]];


]];

CheckInternetConnectivity::InternetNotAllowed = "Error: Internet Connectivity has been disabled. Check the $AllowInternet flag.";
CheckInternetConnectivity::NoNetworkInterface = "Error: No active Ethernet, Wi-Fi, etc. Connection was found. You may see also this error if your computer only has bluetooth connectivity without IP support.";

End[(* `CheckInternetConnectivity` *)];
EndPackage[(* YahooFinanceTools` *)];

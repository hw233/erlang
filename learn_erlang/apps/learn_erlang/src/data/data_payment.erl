-module(data_payment).

-export([get/1]).

get([26159,21542,23548,20986,34892]) -> [[26159,21542,23548,20986,34892],id,[22270,26631,31867,22411],[49,36830],[50,36830],[51,36830],[52,36830],[53,36830]];
get([89,69,83]) -> [[89,69,83],1,1,0,0,5,20,100];
get([89,69,83]) -> [[89,69,83],2,1,0,0,5,20,100];
get([89,69,83]) -> [[89,69,83],3,1,0,0,10,50,200];
get([89,69,83]) -> [[89,69,83],4,1,0,0,10,50,200];
get([89,69,83]) -> [[89,69,83],5,1,0,0,20,100,500];
get([89,69,83]) -> [[89,69,83],6,1,0,0,20,100,500];
get([89,69,83]) -> [[89,69,83],7,1,0,0,50,200,1000];
get([89,69,83]) -> [[89,69,83],8,1,0,0,50,200,1000];
get([89,69,83]) -> [[89,69,83],9,1,0,0,100,500,2000];
get([89,69,83]) -> [[89,69,83],10,1,0,0,100,500,2000];
get([89,69,83]) -> [[89,69,83],11,3,0,0,1000,2500,10000];
get([89,69,83]) -> [[89,69,83],12,2,0,2,10,50,500];
get(_) -> {0,[{0,0,0}]}.

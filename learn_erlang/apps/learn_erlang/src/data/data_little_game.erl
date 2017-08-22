-module(data_little_game).

-export([get/1]).

get(200301) -> [200301,5,[{11,3}],[{5,1}],[{12,0.02},{10,0.09},{11,0.35},{5,0.54}],[{12,1,11},{10,1,8},{11,1,4},{5,1,2},{0,2,0}],[{0,2}]];
get(200501) -> [200501,1,[{10,2}],[{7,1}],[{1,10,1},{11,11,5},{12,22,2},{23,23,10},{24,31,3},{32,20}]];
get(200601) -> [200601,1,[{10,2}],[{2,3},{3,5},{4,9},{5,12}],[{10,0.35},{20,0.25},{30,0.2},{40,0.15},{50,0.05}]];
get(250301) -> [250301,5,[{10,3}],[{5,0.4},{10,0.25},{11,0.2},{12,0.1},{13,0.05}],[{5,0.4},{6,0.25},{7,0.2},{8,0.1},{10,0.05}]];
get(250701) -> [250701,5,[{9,2}],[{3,0.2},{4,0.16},{5,0.16},{7,0.16},{10,0.16},{20,0.16}],[{2,0.2},{3,0.16},{4,0.16},{5,0.16},{7,0.16},{10,0.16}]];
get(250801) -> [250801,5,[{10,2}],[{2,0.4},{5,0.3},{10,0.2},{15,0.09},{20,0.009},{25,0.001}]];
get(250901) -> [250901,5,[{12,3}],[{7,0.4},{10,0.3},{15,0.3}],[{5,0.5},{8,0.5}],[{8,2}]];
get(225701) -> [225701,5,[{10,3}],[{6,1}],[{0,0.15},{4,0.15},{6,0.25},{8,0.2},{10,0.15},{12,0.1}],[],[]];
get(225801) -> [225801,5,[{10,3}],[{6,1}],[{2,0.19},{4,0.19},{6,0.19},{8,0.19},{10,0.14},{12,0.1}],[],[]];
get(225901) -> [225901,5,[{10,3}],[{5,1}],[{0,0.2},{3,0.2},{6,0.2},{10,0.2},{12,0.2}],[],[]];
get(225902) -> [225902,5,[{10,3}],[{5,1}],[{0,0.2},{3,0.2},{6,0.2},{10,0.2},{12,0.2}],[],[]];
get(226001) -> [226001,5,[{10,3}],[{5,1}],[{0,0.2},{3,0.2},{6,0.2},{10,0.2},{12,0.2}],[],[]];
get(226002) -> [226002,5,[{10,3}],[{5,1}],[{0,0.2},{3,0.2},{6,0.2},{10,0.2},{12,0.2}],[],[]];
get(_) -> {0,[{0,0,0}]}.

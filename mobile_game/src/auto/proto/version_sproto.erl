%% Auto generated by sproto from version.sproto
%% Don't edit it.

-module(version_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("version_sproto.hrl").

%% id=1  
pkg_msg(?MSG_VERSION_DEBUG, {ReplyNum}) ->
<<?MSG_VERSION_DEBUG:16, 
ReplyNum>>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_VERSION_DEBUG, Acc0) ->
<<DebugId:16,
MainVersionId:16,
AssistVersionId:16,
ResourceVersionId:16,
Acc1/binary>> = Acc0,
 {{DebugId,MainVersionId,AssistVersionId,ResourceVersionId}, Acc1};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_VERSION_DEBUG) -> <<"MSG_VERSION_DEBUG">>; %% high 36, id 1
to_s(_) -> <<"unknown msg">>.

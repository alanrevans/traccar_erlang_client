-module(swagger_notification_type).

-export([encode/1]).

-export_type([swagger_notification_type/0]).

-type swagger_notification_type() ::
    #{ 'type' => binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.

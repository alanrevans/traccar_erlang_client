-module(swagger_command_type).

-export([encode/1]).

-export_type([swagger_command_type/0]).

-type swagger_command_type() ::
    #{ 'type' => binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.

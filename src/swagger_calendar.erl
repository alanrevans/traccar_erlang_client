-module(swagger_calendar).

-export([encode/1]).

-export_type([swagger_calendar/0]).

-type swagger_calendar() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'data' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'data' := Data,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'data' => Data,
       'attributes' => Attributes
     }.

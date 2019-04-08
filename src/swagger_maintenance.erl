-module(swagger_maintenance).

-export([encode/1]).

-export_type([swagger_maintenance/0]).

-type swagger_maintenance() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'type' => binary(),
       'start' => integer(),
       'period' => integer(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'type' := Type,
          'start' := Start,
          'period' := Period,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'type' => Type,
       'start' => Start,
       'period' => Period,
       'attributes' => Attributes
     }.

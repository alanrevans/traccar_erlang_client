-module(swagger_driver).

-export([encode/1]).

-export_type([swagger_driver/0]).

-type swagger_driver() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'uniqueId' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'uniqueId' := UniqueId,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'uniqueId' => UniqueId,
       'attributes' => Attributes
     }.

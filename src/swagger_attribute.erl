-module(swagger_attribute).

-export([encode/1]).

-export_type([swagger_attribute/0]).

-type swagger_attribute() ::
    #{ 'id' => integer(),
       'description' => binary(),
       'attribute' => binary(),
       'expression' => binary(),
       'type' => binary()
     }.

encode(#{ 'id' := Id,
          'description' := Description,
          'attribute' := Attribute,
          'expression' := Expression,
          'type' := Type
        }) ->
    #{ 'id' => Id,
       'description' => Description,
       'attribute' => Attribute,
       'expression' => Expression,
       'type' => Type
     }.

-module(swagger_group).

-export([encode/1]).

-export_type([swagger_group/0]).

-type swagger_group() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'groupId' => integer(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'groupId' := GroupId,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'groupId' => GroupId,
       'attributes' => Attributes
     }.

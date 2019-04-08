-module(swagger_command).

-export([encode/1]).

-export_type([swagger_command/0]).

-type swagger_command() ::
    #{ 'id' => integer(),
       'deviceId' => integer(),
       'description' => binary(),
       'type' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'deviceId' := DeviceId,
          'description' := Description,
          'type' := Type,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'deviceId' => DeviceId,
       'description' => Description,
       'type' => Type,
       'attributes' => Attributes
     }.

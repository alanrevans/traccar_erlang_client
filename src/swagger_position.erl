-module(swagger_position).

-export([encode/1]).

-export_type([swagger_position/0]).

-type swagger_position() ::
    #{ 'id' => integer(),
       'deviceId' => integer(),
       'protocol' => binary(),
       'deviceTime' => swagger_date_time:swagger_date_time(),
       'fixTime' => swagger_date_time:swagger_date_time(),
       'serverTime' => swagger_date_time:swagger_date_time(),
       'outdated' => boolean(),
       'valid' => boolean(),
       'latitude' => integer(),
       'longitude' => integer(),
       'altitude' => integer(),
       'speed' => integer(),
       'course' => integer(),
       'address' => binary(),
       'accuracy' => integer(),
       'network' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'deviceId' := DeviceId,
          'protocol' := Protocol,
          'deviceTime' := DeviceTime,
          'fixTime' := FixTime,
          'serverTime' := ServerTime,
          'outdated' := Outdated,
          'valid' := Valid,
          'latitude' := Latitude,
          'longitude' := Longitude,
          'altitude' := Altitude,
          'speed' := Speed,
          'course' := Course,
          'address' := Address,
          'accuracy' := Accuracy,
          'network' := Network,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'deviceId' => DeviceId,
       'protocol' => Protocol,
       'deviceTime' => DeviceTime,
       'fixTime' => FixTime,
       'serverTime' => ServerTime,
       'outdated' => Outdated,
       'valid' => Valid,
       'latitude' => Latitude,
       'longitude' => Longitude,
       'altitude' => Altitude,
       'speed' => Speed,
       'course' => Course,
       'address' => Address,
       'accuracy' => Accuracy,
       'network' => Network,
       'attributes' => Attributes
     }.

-module(swagger_server).

-export([encode/1]).

-export_type([swagger_server/0]).

-type swagger_server() ::
    #{ 'id' => integer(),
       'registration' => boolean(),
       'readonly' => boolean(),
       'deviceReadonly' => boolean(),
       'limitCommands' => boolean(),
       'map' => binary(),
       'bingKey' => binary(),
       'mapUrl' => binary(),
       'poiLayer' => binary(),
       'latitude' => integer(),
       'longitude' => integer(),
       'zoom' => integer(),
       'twelveHourFormat' => boolean(),
       'version' => binary(),
       'forceSettings' => boolean(),
       'coordinateFormat' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'registration' := Registration,
          'readonly' := Readonly,
          'deviceReadonly' := DeviceReadonly,
          'limitCommands' := LimitCommands,
          'map' := Map,
          'bingKey' := BingKey,
          'mapUrl' := MapUrl,
          'poiLayer' := PoiLayer,
          'latitude' := Latitude,
          'longitude' := Longitude,
          'zoom' := Zoom,
          'twelveHourFormat' := TwelveHourFormat,
          'version' := Version,
          'forceSettings' := ForceSettings,
          'coordinateFormat' := CoordinateFormat,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'registration' => Registration,
       'readonly' => Readonly,
       'deviceReadonly' => DeviceReadonly,
       'limitCommands' => LimitCommands,
       'map' => Map,
       'bingKey' => BingKey,
       'mapUrl' => MapUrl,
       'poiLayer' => PoiLayer,
       'latitude' => Latitude,
       'longitude' => Longitude,
       'zoom' => Zoom,
       'twelveHourFormat' => TwelveHourFormat,
       'version' => Version,
       'forceSettings' => ForceSettings,
       'coordinateFormat' => CoordinateFormat,
       'attributes' => Attributes
     }.

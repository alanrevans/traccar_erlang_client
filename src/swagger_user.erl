-module(swagger_user).

-export([encode/1]).

-export_type([swagger_user/0]).

-type swagger_user() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'email' => binary(),
       'readonly' => boolean(),
       'administrator' => boolean(),
       'map' => binary(),
       'latitude' => integer(),
       'longitude' => integer(),
       'zoom' => integer(),
       'password' => binary(),
       'twelveHourFormat' => boolean(),
       'coordinateFormat' => binary(),
       'disabled' => boolean(),
       'expirationTime' => swagger_date_time:swagger_date_time(),
       'deviceLimit' => integer(),
       'userLimit' => integer(),
       'deviceReadonly' => boolean(),
       'limitCommands' => boolean(),
       'poiLayer' => binary(),
       'token' => binary(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'email' := Email,
          'readonly' := Readonly,
          'administrator' := Administrator,
          'map' := Map,
          'latitude' := Latitude,
          'longitude' := Longitude,
          'zoom' := Zoom,
          'password' := Password,
          'twelveHourFormat' := TwelveHourFormat,
          'coordinateFormat' := CoordinateFormat,
          'disabled' := Disabled,
          'expirationTime' := ExpirationTime,
          'deviceLimit' := DeviceLimit,
          'userLimit' := UserLimit,
          'deviceReadonly' := DeviceReadonly,
          'limitCommands' := LimitCommands,
          'poiLayer' := PoiLayer,
          'token' := Token,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'email' => Email,
       'readonly' => Readonly,
       'administrator' => Administrator,
       'map' => Map,
       'latitude' => Latitude,
       'longitude' => Longitude,
       'zoom' => Zoom,
       'password' => Password,
       'twelveHourFormat' => TwelveHourFormat,
       'coordinateFormat' => CoordinateFormat,
       'disabled' => Disabled,
       'expirationTime' => ExpirationTime,
       'deviceLimit' => DeviceLimit,
       'userLimit' => UserLimit,
       'deviceReadonly' => DeviceReadonly,
       'limitCommands' => LimitCommands,
       'poiLayer' => PoiLayer,
       'token' => Token,
       'attributes' => Attributes
     }.

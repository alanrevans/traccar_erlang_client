-module(swagger_event).

-export([encode/1]).

-export_type([swagger_event/0]).

-type swagger_event() ::
    #{ 'id' => integer(),
       'type' => binary(),
       'serverTime' => swagger_date_time:swagger_date_time(),
       'deviceId' => integer(),
       'positionId' => integer(),
       'geofenceId' => integer(),
       'maintenanceId' => integer(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'type' := Type,
          'serverTime' := ServerTime,
          'deviceId' := DeviceId,
          'positionId' := PositionId,
          'geofenceId' := GeofenceId,
          'maintenanceId' := MaintenanceId,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'type' => Type,
       'serverTime' => ServerTime,
       'deviceId' => DeviceId,
       'positionId' => PositionId,
       'geofenceId' => GeofenceId,
       'maintenanceId' => MaintenanceId,
       'attributes' => Attributes
     }.

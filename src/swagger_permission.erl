-module(swagger_permission).

-export([encode/1]).

-export_type([swagger_permission/0]).

-type swagger_permission() ::
    #{ 'userId' => integer(),
       'deviceId' => integer(),
       'groupId' => integer(),
       'geofenceId' => integer(),
       'calendarId' => integer(),
       'attributeId' => integer(),
       'driverId' => integer(),
       'managedUserId' => integer()
     }.

encode(#{ 'userId' := UserId,
          'deviceId' := DeviceId,
          'groupId' := GroupId,
          'geofenceId' := GeofenceId,
          'calendarId' := CalendarId,
          'attributeId' := AttributeId,
          'driverId' := DriverId,
          'managedUserId' := ManagedUserId
        }) ->
    #{ 'userId' => UserId,
       'deviceId' => DeviceId,
       'groupId' => GroupId,
       'geofenceId' => GeofenceId,
       'calendarId' => CalendarId,
       'attributeId' => AttributeId,
       'driverId' => DriverId,
       'managedUserId' => ManagedUserId
     }.

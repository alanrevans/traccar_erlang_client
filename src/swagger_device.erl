-module(swagger_device).

-export([encode/1]).

-export_type([swagger_device/0]).

-type swagger_device() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'uniqueId' => binary(),
       'status' => binary(),
       'disabled' => boolean(),
       'lastUpdate' => swagger_date_time:swagger_date_time(),
       'positionId' => integer(),
       'groupId' => integer(),
       'phone' => binary(),
       'model' => binary(),
       'contact' => binary(),
       'category' => binary(),
       'geofenceIds' => list(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'uniqueId' := UniqueId,
          'status' := Status,
          'disabled' := Disabled,
          'lastUpdate' := LastUpdate,
          'positionId' := PositionId,
          'groupId' := GroupId,
          'phone' := Phone,
          'model' := Model,
          'contact' := Contact,
          'category' := Category,
          'geofenceIds' := GeofenceIds,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'uniqueId' => UniqueId,
       'status' => Status,
       'disabled' => Disabled,
       'lastUpdate' => LastUpdate,
       'positionId' => PositionId,
       'groupId' => GroupId,
       'phone' => Phone,
       'model' => Model,
       'contact' => Contact,
       'category' => Category,
       'geofenceIds' => GeofenceIds,
       'attributes' => Attributes
     }.

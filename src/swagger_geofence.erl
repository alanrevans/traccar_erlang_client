-module(swagger_geofence).

-export([encode/1]).

-export_type([swagger_geofence/0]).

-type swagger_geofence() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'description' => binary(),
       'area' => binary(),
       'calendarId' => integer(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'description' := Description,
          'area' := Area,
          'calendarId' := CalendarId,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'description' => Description,
       'area' => Area,
       'calendarId' => CalendarId,
       'attributes' => Attributes
     }.

-module(swagger_report_stops).

-export([encode/1]).

-export_type([swagger_report_stops/0]).

-type swagger_report_stops() ::
    #{ 'deviceId' => integer(),
       'deviceName' => binary(),
       'duration' => integer(),
       'startTime' => swagger_date_time:swagger_date_time(),
       'address' => binary(),
       'lat' => integer(),
       'lon' => integer(),
       'endTime' => swagger_date_time:swagger_date_time(),
       'spentFuel' => integer(),
       'engineHours' => integer()
     }.

encode(#{ 'deviceId' := DeviceId,
          'deviceName' := DeviceName,
          'duration' := Duration,
          'startTime' := StartTime,
          'address' := Address,
          'lat' := Lat,
          'lon' := Lon,
          'endTime' := EndTime,
          'spentFuel' := SpentFuel,
          'engineHours' := EngineHours
        }) ->
    #{ 'deviceId' => DeviceId,
       'deviceName' => DeviceName,
       'duration' => Duration,
       'startTime' => StartTime,
       'address' => Address,
       'lat' => Lat,
       'lon' => Lon,
       'endTime' => EndTime,
       'spentFuel' => SpentFuel,
       'engineHours' => EngineHours
     }.

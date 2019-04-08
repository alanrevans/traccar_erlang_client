-module(swagger_report_trips).

-export([encode/1]).

-export_type([swagger_report_trips/0]).

-type swagger_report_trips() ::
    #{ 'deviceId' => integer(),
       'deviceName' => binary(),
       'maxSpeed' => integer(),
       'averageSpeed' => integer(),
       'distance' => integer(),
       'spentFuel' => integer(),
       'duration' => integer(),
       'startTime' => swagger_date_time:swagger_date_time(),
       'startAddress' => binary(),
       'startLat' => integer(),
       'startLon' => integer(),
       'endTime' => swagger_date_time:swagger_date_time(),
       'endAddress' => binary(),
       'endLat' => integer(),
       'endLon' => integer(),
       'driverUniqueId' => integer(),
       'driverName' => binary()
     }.

encode(#{ 'deviceId' := DeviceId,
          'deviceName' := DeviceName,
          'maxSpeed' := MaxSpeed,
          'averageSpeed' := AverageSpeed,
          'distance' := Distance,
          'spentFuel' := SpentFuel,
          'duration' := Duration,
          'startTime' := StartTime,
          'startAddress' := StartAddress,
          'startLat' := StartLat,
          'startLon' := StartLon,
          'endTime' := EndTime,
          'endAddress' := EndAddress,
          'endLat' := EndLat,
          'endLon' := EndLon,
          'driverUniqueId' := DriverUniqueId,
          'driverName' := DriverName
        }) ->
    #{ 'deviceId' => DeviceId,
       'deviceName' => DeviceName,
       'maxSpeed' => MaxSpeed,
       'averageSpeed' => AverageSpeed,
       'distance' => Distance,
       'spentFuel' => SpentFuel,
       'duration' => Duration,
       'startTime' => StartTime,
       'startAddress' => StartAddress,
       'startLat' => StartLat,
       'startLon' => StartLon,
       'endTime' => EndTime,
       'endAddress' => EndAddress,
       'endLat' => EndLat,
       'endLon' => EndLon,
       'driverUniqueId' => DriverUniqueId,
       'driverName' => DriverName
     }.

-module(swagger_report_summary).

-export([encode/1]).

-export_type([swagger_report_summary/0]).

-type swagger_report_summary() ::
    #{ 'deviceId' => integer(),
       'deviceName' => binary(),
       'maxSpeed' => integer(),
       'averageSpeed' => integer(),
       'distance' => integer(),
       'spentFuel' => integer(),
       'engineHours' => integer()
     }.

encode(#{ 'deviceId' := DeviceId,
          'deviceName' := DeviceName,
          'maxSpeed' := MaxSpeed,
          'averageSpeed' := AverageSpeed,
          'distance' := Distance,
          'spentFuel' := SpentFuel,
          'engineHours' := EngineHours
        }) ->
    #{ 'deviceId' => DeviceId,
       'deviceName' => DeviceName,
       'maxSpeed' => MaxSpeed,
       'averageSpeed' => AverageSpeed,
       'distance' => Distance,
       'spentFuel' => SpentFuel,
       'engineHours' => EngineHours
     }.

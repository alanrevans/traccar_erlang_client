-module(swagger_device_accumulators).

-export([encode/1]).

-export_type([swagger_device_accumulators/0]).

-type swagger_device_accumulators() ::
    #{ 'deviceId' => integer(),
       'totalDistance' => integer(),
       'hours' => integer()
     }.

encode(#{ 'deviceId' := DeviceId,
          'totalDistance' := TotalDistance,
          'hours' := Hours
        }) ->
    #{ 'deviceId' => DeviceId,
       'totalDistance' => TotalDistance,
       'hours' => Hours
     }.

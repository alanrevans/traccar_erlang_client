-module(swagger_statistics).

-export([encode/1]).

-export_type([swagger_statistics/0]).

-type swagger_statistics() ::
    #{ 'captureTime' => swagger_date_time:swagger_date_time(),
       'activeUsers' => integer(),
       'activeDevices' => integer(),
       'requests' => integer(),
       'messagesReceived' => integer(),
       'messagesStored' => integer()
     }.

encode(#{ 'captureTime' := CaptureTime,
          'activeUsers' := ActiveUsers,
          'activeDevices' := ActiveDevices,
          'requests' := Requests,
          'messagesReceived' := MessagesReceived,
          'messagesStored' := MessagesStored
        }) ->
    #{ 'captureTime' => CaptureTime,
       'activeUsers' => ActiveUsers,
       'activeDevices' => ActiveDevices,
       'requests' => Requests,
       'messagesReceived' => MessagesReceived,
       'messagesStored' => MessagesStored
     }.

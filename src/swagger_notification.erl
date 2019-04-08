-module(swagger_notification).

-export([encode/1]).

-export_type([swagger_notification/0]).

-type swagger_notification() ::
    #{ 'id' => integer(),
       'type' => binary(),
       'always' => boolean(),
       'web' => boolean(),
       'mail' => boolean(),
       'sms' => boolean(),
       'calendarId' => integer(),
       'attributes' => maps:map()
     }.

encode(#{ 'id' := Id,
          'type' := Type,
          'always' := Always,
          'web' := Web,
          'mail' := Mail,
          'sms' := Sms,
          'calendarId' := CalendarId,
          'attributes' := Attributes
        }) ->
    #{ 'id' => Id,
       'type' => Type,
       'always' => Always,
       'web' => Web,
       'mail' => Mail,
       'sms' => Sms,
       'calendarId' => CalendarId,
       'attributes' => Attributes
     }.

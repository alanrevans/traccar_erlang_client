-module(swagger_default_api).

-export([attributes_computed_get/1, attributes_computed_get/2,
         attributes_computed_id_delete/2, attributes_computed_id_delete/3,
         attributes_computed_id_put/3, attributes_computed_id_put/4,
         attributes_computed_post/2, attributes_computed_post/3,
         calendars_get/1, calendars_get/2,
         calendars_id_delete/2, calendars_id_delete/3,
         calendars_id_put/3, calendars_id_put/4,
         calendars_post/2, calendars_post/3,
         commands_get/1, commands_get/2,
         commands_id_delete/2, commands_id_delete/3,
         commands_id_put/3, commands_id_put/4,
         commands_post/2, commands_post/3,
         commands_send_get/1, commands_send_get/2,
         commands_send_post/2, commands_send_post/3,
         commands_types_get/1, commands_types_get/2,
         devices_get/1, devices_get/2,
         devices_id_accumulators_put/3, devices_id_accumulators_put/4,
         devices_id_delete/2, devices_id_delete/3,
         devices_id_put/3, devices_id_put/4,
         devices_post/2, devices_post/3,
         drivers_get/1, drivers_get/2,
         drivers_id_delete/2, drivers_id_delete/3,
         drivers_id_put/3, drivers_id_put/4,
         drivers_post/2, drivers_post/3,
         events_id_get/2, events_id_get/3,
         geofences_get/1, geofences_get/2,
         geofences_id_delete/2, geofences_id_delete/3,
         geofences_id_put/3, geofences_id_put/4,
         geofences_post/2, geofences_post/3,
         groups_get/1, groups_get/2,
         groups_id_delete/2, groups_id_delete/3,
         groups_id_put/3, groups_id_put/4,
         groups_post/2, groups_post/3,
         maintenance_get/1, maintenance_get/2,
         maintenance_id_delete/2, maintenance_id_delete/3,
         maintenance_id_put/3, maintenance_id_put/4,
         maintenance_post/2, maintenance_post/3,
         notifications_get/1, notifications_get/2,
         notifications_id_delete/2, notifications_id_delete/3,
         notifications_id_put/3, notifications_id_put/4,
         notifications_post/2, notifications_post/3,
         notifications_test_post/1, notifications_test_post/2,
         notifications_types_get/1, notifications_types_get/2,
         permissions_delete/2, permissions_delete/3,
         permissions_post/2, permissions_post/3,
         positions_get/1, positions_get/2,
         reports_events_get/3, reports_events_get/4,
         reports_route_get/3, reports_route_get/4,
         reports_stops_get/3, reports_stops_get/4,
         reports_summary_get/3, reports_summary_get/4,
         reports_trips_get/3, reports_trips_get/4,
         server_get/1, server_get/2,
         server_put/2, server_put/3,
         session_delete/1, session_delete/2,
         session_get/1, session_get/2,
         session_post/3, session_post/4,
         statistics_get/3, statistics_get/4,
         users_get/1, users_get/2,
         users_id_delete/2, users_id_delete/3,
         users_id_put/3, users_id_put/4,
         users_post/2, users_post/3]).

-define(BASE_URL, "/api").

%% @doc Fetch a list of Attributes
%% Without params, it returns a list of Attributes the user has access to
-spec attributes_computed_get(ctx:ctx()) -> {ok, [swagger_attribute:swagger_attribute()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_get(Ctx) ->
    attributes_computed_get(Ctx, #{}).

-spec attributes_computed_get(ctx:ctx(), maps:map()) -> {ok, [swagger_attribute:swagger_attribute()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/attributes/computed"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an Attribute
%% 
-spec attributes_computed_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_id_delete(Ctx, Id) ->
    attributes_computed_id_delete(Ctx, Id, #{}).

-spec attributes_computed_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/attributes/computed/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an Attribute
%% 
-spec attributes_computed_id_put(ctx:ctx(), integer(), swagger_attribute:swagger_attribute()) -> {ok, swagger_attribute:swagger_attribute(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_id_put(Ctx, Id, Body) ->
    attributes_computed_id_put(Ctx, Id, Body, #{}).

-spec attributes_computed_id_put(ctx:ctx(), integer(), swagger_attribute:swagger_attribute(), maps:map()) -> {ok, swagger_attribute:swagger_attribute(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/attributes/computed/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an Attribute
%% 
-spec attributes_computed_post(ctx:ctx(), swagger_attribute:swagger_attribute()) -> {ok, swagger_attribute:swagger_attribute(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_post(Ctx, Body) ->
    attributes_computed_post(Ctx, Body, #{}).

-spec attributes_computed_post(ctx:ctx(), swagger_attribute:swagger_attribute(), maps:map()) -> {ok, swagger_attribute:swagger_attribute(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attributes_computed_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/attributes/computed"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Calendars
%% Without params, it returns a list of Calendars the user has access to
-spec calendars_get(ctx:ctx()) -> {ok, [swagger_calendar:swagger_calendar()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_get(Ctx) ->
    calendars_get(Ctx, #{}).

-spec calendars_get(ctx:ctx(), maps:map()) -> {ok, [swagger_calendar:swagger_calendar()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/calendars"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Calendar
%% 
-spec calendars_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_id_delete(Ctx, Id) ->
    calendars_id_delete(Ctx, Id, #{}).

-spec calendars_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/calendars/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Calendar
%% 
-spec calendars_id_put(ctx:ctx(), integer(), swagger_calendar:swagger_calendar()) -> {ok, swagger_calendar:swagger_calendar(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_id_put(Ctx, Id, Body) ->
    calendars_id_put(Ctx, Id, Body, #{}).

-spec calendars_id_put(ctx:ctx(), integer(), swagger_calendar:swagger_calendar(), maps:map()) -> {ok, swagger_calendar:swagger_calendar(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/calendars/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Calendar
%% 
-spec calendars_post(ctx:ctx(), swagger_calendar:swagger_calendar()) -> {ok, swagger_calendar:swagger_calendar(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_post(Ctx, Body) ->
    calendars_post(Ctx, Body, #{}).

-spec calendars_post(ctx:ctx(), swagger_calendar:swagger_calendar(), maps:map()) -> {ok, swagger_calendar:swagger_calendar(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
calendars_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/calendars"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Saved Commands
%% Without params, it returns a list of Drivers the user has access to
-spec commands_get(ctx:ctx()) -> {ok, [swagger_command:swagger_command()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_get(Ctx) ->
    commands_get(Ctx, #{}).

-spec commands_get(ctx:ctx(), maps:map()) -> {ok, [swagger_command:swagger_command()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/commands"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Saved Command
%% 
-spec commands_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_id_delete(Ctx, Id) ->
    commands_id_delete(Ctx, Id, #{}).

-spec commands_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/commands/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Saved Command
%% 
-spec commands_id_put(ctx:ctx(), integer(), swagger_command:swagger_command()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_id_put(Ctx, Id, Body) ->
    commands_id_put(Ctx, Id, Body, #{}).

-spec commands_id_put(ctx:ctx(), integer(), swagger_command:swagger_command(), maps:map()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/commands/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Saved Command
%% 
-spec commands_post(ctx:ctx(), swagger_command:swagger_command()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_post(Ctx, Body) ->
    commands_post(Ctx, Body, #{}).

-spec commands_post(ctx:ctx(), swagger_command:swagger_command(), maps:map()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/commands"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Saved Commands supported by Device at the moment
%% Return a list of saved commands linked to Device and its groups, filtered by current Device protocol support
-spec commands_send_get(ctx:ctx()) -> {ok, [swagger_command:swagger_command()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_send_get(Ctx) ->
    commands_send_get(Ctx, #{}).

-spec commands_send_get(ctx:ctx(), maps:map()) -> {ok, [swagger_command:swagger_command()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_send_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/commands/send"],
    QS = lists:flatten([])++swagger_utils:optional_params(['deviceId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Dispatch commands to device
%% Dispatch a new command or Saved Command if _body.id_ set
-spec commands_send_post(ctx:ctx(), swagger_command:swagger_command()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_send_post(Ctx, Body) ->
    commands_send_post(Ctx, Body, #{}).

-spec commands_send_post(ctx:ctx(), swagger_command:swagger_command(), maps:map()) -> {ok, swagger_command:swagger_command(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_send_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/commands/send"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of available Commands for the Device or all possible Commands if Device ommited
%% 
-spec commands_types_get(ctx:ctx()) -> {ok, [swagger_command_type:swagger_command_type()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_types_get(Ctx) ->
    commands_types_get(Ctx, #{}).

-spec commands_types_get(ctx:ctx(), maps:map()) -> {ok, [swagger_command_type:swagger_command_type()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
commands_types_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/commands/types"],
    QS = lists:flatten([])++swagger_utils:optional_params(['deviceId', 'textChannel'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Devices
%% Without any params, returns a list of the user's devices
-spec devices_get(ctx:ctx()) -> {ok, [swagger_device:swagger_device()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_get(Ctx) ->
    devices_get(Ctx, #{}).

-spec devices_get(ctx:ctx(), maps:map()) -> {ok, [swagger_device:swagger_device()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/devices"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'id', 'uniqueId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update total distance and hours of the Device
%% 
-spec devices_id_accumulators_put(ctx:ctx(), integer(), swagger_device_accumulators:swagger_device_accumulators()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_accumulators_put(Ctx, Id, Body) ->
    devices_id_accumulators_put(Ctx, Id, Body, #{}).

-spec devices_id_accumulators_put(ctx:ctx(), integer(), swagger_device_accumulators:swagger_device_accumulators(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_accumulators_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/devices/", Id, "/accumulators"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Device
%% 
-spec devices_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_delete(Ctx, Id) ->
    devices_id_delete(Ctx, Id, #{}).

-spec devices_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/devices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Device
%% 
-spec devices_id_put(ctx:ctx(), integer(), swagger_device:swagger_device()) -> {ok, swagger_device:swagger_device(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_put(Ctx, Id, Body) ->
    devices_id_put(Ctx, Id, Body, #{}).

-spec devices_id_put(ctx:ctx(), integer(), swagger_device:swagger_device(), maps:map()) -> {ok, swagger_device:swagger_device(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/devices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Device
%% 
-spec devices_post(ctx:ctx(), swagger_device:swagger_device()) -> {ok, swagger_device:swagger_device(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_post(Ctx, Body) ->
    devices_post(Ctx, Body, #{}).

-spec devices_post(ctx:ctx(), swagger_device:swagger_device(), maps:map()) -> {ok, swagger_device:swagger_device(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
devices_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/devices"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Drivers
%% Without params, it returns a list of Drivers the user has access to
-spec drivers_get(ctx:ctx()) -> {ok, [swagger_driver:swagger_driver()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_get(Ctx) ->
    drivers_get(Ctx, #{}).

-spec drivers_get(ctx:ctx(), maps:map()) -> {ok, [swagger_driver:swagger_driver()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/drivers"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Driver
%% 
-spec drivers_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_id_delete(Ctx, Id) ->
    drivers_id_delete(Ctx, Id, #{}).

-spec drivers_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/drivers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Driver
%% 
-spec drivers_id_put(ctx:ctx(), integer(), swagger_driver:swagger_driver()) -> {ok, swagger_driver:swagger_driver(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_id_put(Ctx, Id, Body) ->
    drivers_id_put(Ctx, Id, Body, #{}).

-spec drivers_id_put(ctx:ctx(), integer(), swagger_driver:swagger_driver(), maps:map()) -> {ok, swagger_driver:swagger_driver(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/drivers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Driver
%% 
-spec drivers_post(ctx:ctx(), swagger_driver:swagger_driver()) -> {ok, swagger_driver:swagger_driver(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_post(Ctx, Body) ->
    drivers_post(Ctx, Body, #{}).

-spec drivers_post(ctx:ctx(), swagger_driver:swagger_driver(), maps:map()) -> {ok, swagger_driver:swagger_driver(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
drivers_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/drivers"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec events_id_get(ctx:ctx(), integer()) -> {ok, swagger_event:swagger_event(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
events_id_get(Ctx, Id) ->
    events_id_get(Ctx, Id, #{}).

-spec events_id_get(ctx:ctx(), integer(), maps:map()) -> {ok, swagger_event:swagger_event(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
events_id_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/events/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Geofences
%% Without params, it returns a list of Geofences the user has access to
-spec geofences_get(ctx:ctx()) -> {ok, [swagger_geofence:swagger_geofence()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_get(Ctx) ->
    geofences_get(Ctx, #{}).

-spec geofences_get(ctx:ctx(), maps:map()) -> {ok, [swagger_geofence:swagger_geofence()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/geofences"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Geofence
%% 
-spec geofences_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_id_delete(Ctx, Id) ->
    geofences_id_delete(Ctx, Id, #{}).

-spec geofences_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/geofences/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Geofence
%% 
-spec geofences_id_put(ctx:ctx(), integer(), swagger_geofence:swagger_geofence()) -> {ok, swagger_geofence:swagger_geofence(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_id_put(Ctx, Id, Body) ->
    geofences_id_put(Ctx, Id, Body, #{}).

-spec geofences_id_put(ctx:ctx(), integer(), swagger_geofence:swagger_geofence(), maps:map()) -> {ok, swagger_geofence:swagger_geofence(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/geofences/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Geofence
%% 
-spec geofences_post(ctx:ctx(), swagger_geofence:swagger_geofence()) -> {ok, swagger_geofence:swagger_geofence(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_post(Ctx, Body) ->
    geofences_post(Ctx, Body, #{}).

-spec geofences_post(ctx:ctx(), swagger_geofence:swagger_geofence(), maps:map()) -> {ok, swagger_geofence:swagger_geofence(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
geofences_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/geofences"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Groups
%% Without any params, returns a list of the Groups the user belongs to
-spec groups_get(ctx:ctx()) -> {ok, [swagger_group:swagger_group()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get(Ctx) ->
    groups_get(Ctx, #{}).

-spec groups_get(ctx:ctx(), maps:map()) -> {ok, [swagger_group:swagger_group()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Group
%% 
-spec groups_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_id_delete(Ctx, Id) ->
    groups_id_delete(Ctx, Id, #{}).

-spec groups_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/groups/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Group
%% 
-spec groups_id_put(ctx:ctx(), integer(), swagger_group:swagger_group()) -> {ok, swagger_group:swagger_group(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_id_put(Ctx, Id, Body) ->
    groups_id_put(Ctx, Id, Body, #{}).

-spec groups_id_put(ctx:ctx(), integer(), swagger_group:swagger_group(), maps:map()) -> {ok, swagger_group:swagger_group(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/groups/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Group
%% 
-spec groups_post(ctx:ctx(), swagger_group:swagger_group()) -> {ok, swagger_group:swagger_group(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_post(Ctx, Body) ->
    groups_post(Ctx, Body, #{}).

-spec groups_post(ctx:ctx(), swagger_group:swagger_group(), maps:map()) -> {ok, swagger_group:swagger_group(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/groups"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Maintenance
%% Without params, it returns a list of Maintenance the user has access to
-spec maintenance_get(ctx:ctx()) -> {ok, [swagger_maintenance:swagger_maintenance()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_get(Ctx) ->
    maintenance_get(Ctx, #{}).

-spec maintenance_get(ctx:ctx(), maps:map()) -> {ok, [swagger_maintenance:swagger_maintenance()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/maintenance"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Maintenance
%% 
-spec maintenance_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_id_delete(Ctx, Id) ->
    maintenance_id_delete(Ctx, Id, #{}).

-spec maintenance_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/maintenance/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Maintenance
%% 
-spec maintenance_id_put(ctx:ctx(), integer(), swagger_maintenance:swagger_maintenance()) -> {ok, swagger_maintenance:swagger_maintenance(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_id_put(Ctx, Id, Body) ->
    maintenance_id_put(Ctx, Id, Body, #{}).

-spec maintenance_id_put(ctx:ctx(), integer(), swagger_maintenance:swagger_maintenance(), maps:map()) -> {ok, swagger_maintenance:swagger_maintenance(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/maintenance/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Maintenance
%% 
-spec maintenance_post(ctx:ctx(), swagger_maintenance:swagger_maintenance()) -> {ok, swagger_maintenance:swagger_maintenance(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_post(Ctx, Body) ->
    maintenance_post(Ctx, Body, #{}).

-spec maintenance_post(ctx:ctx(), swagger_maintenance:swagger_maintenance(), maps:map()) -> {ok, swagger_maintenance:swagger_maintenance(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
maintenance_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/maintenance"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Notifications
%% Without params, it returns a list of Notifications the user has access to
-spec notifications_get(ctx:ctx()) -> {ok, [swagger_notification:swagger_notification()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_get(Ctx) ->
    notifications_get(Ctx, #{}).

-spec notifications_get(ctx:ctx(), maps:map()) -> {ok, [swagger_notification:swagger_notification()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/notifications"],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'userId', 'deviceId', 'groupId', 'refresh'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Notification
%% 
-spec notifications_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_id_delete(Ctx, Id) ->
    notifications_id_delete(Ctx, Id, #{}).

-spec notifications_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/notifications/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Notification
%% 
-spec notifications_id_put(ctx:ctx(), integer(), swagger_notification:swagger_notification()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_id_put(Ctx, Id, Body) ->
    notifications_id_put(Ctx, Id, Body, #{}).

-spec notifications_id_put(ctx:ctx(), integer(), swagger_notification:swagger_notification(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/notifications/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Notification
%% 
-spec notifications_post(ctx:ctx(), swagger_notification:swagger_notification()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_post(Ctx, Body) ->
    notifications_post(Ctx, Body, #{}).

-spec notifications_post(ctx:ctx(), swagger_notification:swagger_notification(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/notifications"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send test notification to current user via Email and SMS
%% 
-spec notifications_test_post(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_test_post(Ctx) ->
    notifications_test_post(Ctx, #{}).

-spec notifications_test_post(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_test_post(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/notifications/test"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of available Notification types
%% 
-spec notifications_types_get(ctx:ctx()) -> {ok, [swagger_notification_type:swagger_notification_type()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_types_get(Ctx) ->
    notifications_types_get(Ctx, #{}).

-spec notifications_types_get(ctx:ctx(), maps:map()) -> {ok, [swagger_notification_type:swagger_notification_type()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notifications_types_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/notifications/types"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Unlink an Object from another Object
%% 
-spec permissions_delete(ctx:ctx(), swagger_permission:swagger_permission()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permissions_delete(Ctx, Body) ->
    permissions_delete(Ctx, Body, #{}).

-spec permissions_delete(ctx:ctx(), swagger_permission:swagger_permission(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permissions_delete(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/permissions"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Link an Object to another Object
%% 
-spec permissions_post(ctx:ctx(), swagger_permission:swagger_permission()) -> {ok, swagger_permission:swagger_permission(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permissions_post(Ctx, Body) ->
    permissions_post(Ctx, Body, #{}).

-spec permissions_post(ctx:ctx(), swagger_permission:swagger_permission(), maps:map()) -> {ok, swagger_permission:swagger_permission(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permissions_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/permissions"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetches a list of Positions
%% Without any params, it returns a list of last known positions for all the user's Devices. _from_ and _to_ fields are not required with _id_
-spec positions_get(ctx:ctx()) -> {ok, [swagger_position:swagger_position()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
positions_get(Ctx) ->
    positions_get(Ctx, #{}).

-spec positions_get(ctx:ctx(), maps:map()) -> {ok, [swagger_position:swagger_position()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
positions_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/positions"],
    QS = lists:flatten([])++swagger_utils:optional_params(['deviceId', 'from', 'to', 'id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"text/csv">>, <<"application/gpx+xml">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Events within the time period for the Devices or Groups
%% At least one _deviceId_ or one _groupId_ must be passed
-spec reports_events_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_event:swagger_event()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_events_get(Ctx, From, To) ->
    reports_events_get(Ctx, From, To, #{}).

-spec reports_events_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_event:swagger_event()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_events_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/reports/events"],
    QS = lists:flatten([, {<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params(['deviceId', 'groupId', 'type'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Positions within the time period for the Devices or Groups
%% At least one _deviceId_ or one _groupId_ must be passed
-spec reports_route_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_position:swagger_position()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_route_get(Ctx, From, To) ->
    reports_route_get(Ctx, From, To, #{}).

-spec reports_route_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_position:swagger_position()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_route_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/reports/route"],
    QS = lists:flatten([, {<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params(['deviceId', 'groupId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of ReportStops within the time period for the Devices or Groups
%% At least one _deviceId_ or one _groupId_ must be passed
-spec reports_stops_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_report_stops:swagger_report_stops()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_stops_get(Ctx, From, To) ->
    reports_stops_get(Ctx, From, To, #{}).

-spec reports_stops_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_report_stops:swagger_report_stops()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_stops_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/reports/stops"],
    QS = lists:flatten([, {<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params(['deviceId', 'groupId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of ReportSummary within the time period for the Devices or Groups
%% At least one _deviceId_ or one _groupId_ must be passed
-spec reports_summary_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_report_summary:swagger_report_summary()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_summary_get(Ctx, From, To) ->
    reports_summary_get(Ctx, From, To, #{}).

-spec reports_summary_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_report_summary:swagger_report_summary()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_summary_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/reports/summary"],
    QS = lists:flatten([, {<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params(['deviceId', 'groupId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of ReportTrips within the time period for the Devices or Groups
%% At least one _deviceId_ or one _groupId_ must be passed
-spec reports_trips_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_report_trips:swagger_report_trips()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_trips_get(Ctx, From, To) ->
    reports_trips_get(Ctx, From, To, #{}).

-spec reports_trips_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_report_trips:swagger_report_trips()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
reports_trips_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/reports/trips"],
    QS = lists:flatten([, {<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params(['deviceId', 'groupId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>, <<"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch Server information
%% 
-spec server_get(ctx:ctx()) -> {ok, swagger_server:swagger_server(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
server_get(Ctx) ->
    server_get(Ctx, #{}).

-spec server_get(ctx:ctx(), maps:map()) -> {ok, swagger_server:swagger_server(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
server_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/server"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Server information
%% 
-spec server_put(ctx:ctx(), swagger_server:swagger_server()) -> {ok, swagger_server:swagger_server(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
server_put(Ctx, Body) ->
    server_put(Ctx, Body, #{}).

-spec server_put(ctx:ctx(), swagger_server:swagger_server(), maps:map()) -> {ok, swagger_server:swagger_server(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
server_put(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/server"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Close the Session
%% 
-spec session_delete(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_delete(Ctx) ->
    session_delete(Ctx, #{}).

-spec session_delete(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_delete(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/session"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch Session information
%% 
-spec session_get(ctx:ctx()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_get(Ctx) ->
    session_get(Ctx, #{}).

-spec session_get(ctx:ctx(), maps:map()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/session"],
    QS = lists:flatten([])++swagger_utils:optional_params(['token'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new Session
%% 
-spec session_post(ctx:ctx(), binary(), binary()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_post(Ctx, Email, Password) ->
    session_post(Ctx, Email, Password, #{}).

-spec session_post(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
session_post(Ctx, Email, Password, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/session"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"email">>, Email}, {<<"password">>, Password}]++swagger_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch server Statistics
%% 
-spec statistics_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time()) -> {ok, [swagger_statistics:swagger_statistics()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
statistics_get(Ctx, From, To) ->
    statistics_get(Ctx, From, To, #{}).

-spec statistics_get(ctx:ctx(), swagger_date_time:swagger_date_time(), swagger_date_time:swagger_date_time(), maps:map()) -> {ok, [swagger_statistics:swagger_statistics()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
statistics_get(Ctx, From, To, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/statistics"],
    QS = lists:flatten([{<<"from">>, From}, {<<"to">>, To}])++swagger_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a list of Users
%% 
-spec users_get(ctx:ctx()) -> {ok, [swagger_user:swagger_user()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_get(Ctx) ->
    users_get(Ctx, #{}).

-spec users_get(ctx:ctx(), maps:map()) -> {ok, [swagger_user:swagger_user()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['userId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a User
%% 
-spec users_id_delete(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_id_delete(Ctx, Id) ->
    users_id_delete(Ctx, Id, #{}).

-spec users_id_delete(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_id_delete(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/users/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a User
%% 
-spec users_id_put(ctx:ctx(), integer(), swagger_user:swagger_user()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_id_put(Ctx, Id, Body) ->
    users_id_put(Ctx, Id, Body, #{}).

-spec users_id_put(ctx:ctx(), integer(), swagger_user:swagger_user(), maps:map()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_id_put(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/users/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a User
%% 
-spec users_post(ctx:ctx(), swagger_user:swagger_user()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_post(Ctx, Body) ->
    users_post(Ctx, Body, #{}).

-spec users_post(ctx:ctx(), swagger_user:swagger_user(), maps:map()) -> {ok, swagger_user:swagger_user(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_post(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).



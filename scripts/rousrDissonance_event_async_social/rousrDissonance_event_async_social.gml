function rousrDissonance_event_async_social() //rousrDissonance_event_async_social
{
    var _discord_event = ds_map_find_value(async_load, "discord_event");
	var func;
    if (_discord_event == undefined)
        return;
    switch _discord_event
    {
        case "ready":
            func = Handlers[dissonance.onready];
            Is_ready = 1;
            script_execute(func[0], func[1]);
            break
        case "disconnected":
        case "error":
            func = Handlers[(_discord_event == "disconnected" ? dissonance.ondisconnect : dissonance.onerror)];
            var _error_code = ds_map_find_value(async_load, "error_code");
            var _msg = ds_map_find_value(async_load, "msg");
            Is_ready = 0;
            Last_error_code = _error_code;
            Last_error_msg = _msg;
            script_execute(func[0], _error_code, _msg, func[1]);
            break
        case "join":
        case "spectate":
            func = Handlers[(_discord_event == "spectate" ? dissonance.onspectate : dissonance.onjoin)];
            var _secret = ds_map_find_value(async_load, "secret");
            script_execute(func[0], _secret, func[1]);
            break
        case "join_request":
            func = Handlers[dissonance.onjoinrequest];
            var _user_id = ds_map_find_value(async_load, "user_id");
            var _user_name = ds_map_find_value(async_load, "user_name");
            var _avatar = ds_map_find_value(async_load, "avatar");
            var _av_index = Num_avatars;
            Avatars[Num_avatars++] = [_avatar];
            script_execute(func[0], _user_id, _user_name, _avatar, func[1]);
            break
        default:
            return;
    }

}


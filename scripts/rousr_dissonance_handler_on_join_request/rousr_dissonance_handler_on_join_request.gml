function rousr_dissonance_handler_on_join_request() //rousr_dissonance_handler_on_join_request
{
    var _script_index = argument[0];
    var _user_data = (argument_count > 1 ? argument[1] : undefined);
    with (global.__rousr_dissonance)
        array_set(Handlers, dissonance.onjoinrequest, [_script_index, _user_data]);
}


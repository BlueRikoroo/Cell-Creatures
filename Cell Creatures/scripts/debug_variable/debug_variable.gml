/// @description debug_variable(show?,variable1,variable2...)
/// @param show?
/// @param variable1
/// @param variable2...
var str = "";

for(var i = 1;i<argument_count;i++){
    str+=string(i)+": '"+string(argument[i])+"'#"
}

if argument[0]
    show_message(str)
else
    show_debug_message(str)

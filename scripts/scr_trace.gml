/// scr_trace(arguments)
/*
** Pass up to 16 arguments to this script 
** to show formatted debug message in 1 line
** you can pass both types of argumenst (real or string)
** output should look like this 
** (1) arg1 (2) arg2 ... etc ... (16) arg16
** usage example: scr_trace("delta", 555, "x", x);
** output example: (1) delta (2) 555 (3) x (4) 777
** Created by Alexander Kondyrev
** http://www.hiddenrabbit.com/ 
*/

// Varible for control the cycle
var i = 0;

// Empty string using in final output
var str = "";

// Make formated string from all passed arguments
while (i < argument_count) {
    str += "(";
    str += string(i + 1);
    str += ") ";
    str += string(argument[i]);
    str += " ";
    i++;
};

// Show debug message in console using standart function
show_debug_message(str);

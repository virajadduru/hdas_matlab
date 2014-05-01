function []=send_alert(comm_handle,alert_on,zone,level)

message = bitor(bitor(bitshift(double(alert_on),7),bitshift(level,4)),zone)

fwrite(comm_handle,message);
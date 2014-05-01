function comm_handle = hdascomm_open()

comm_handle = serial('COM7');    % define serial port
comm_handle.BaudRate=9600;               % define baud rate
set(comm_handle, 'terminator', 'LF');    % define the terminator for println
fopen(comm_handle);
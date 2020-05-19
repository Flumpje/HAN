--------------------------------------------------------------------
--! \file      showkey.vhd
--! \date      see top of 'Version History'
--! \brief     Showkey
--! \author    Remko Welling (WLGRW) remko.welling@han.nl
--! \copyright HAN TF ELT/ESE Arnhem 
--!
--! Version History:
--! ----------------
--!
--! Nr:    |Date:      |Author: |Remarks:
--! -------|-----------|--------|-----------------------------------
--! 001    |20-3-2020  |WLGRW   |Inital version
--!
--! # Opdracht 1: Deelopdracht showkey
--!
--! showkey will convert any PS2 Keyboard formatted serial received byte 
--! in to a 8-byte parallel word on port 'scancode' When a correct byte 
--! is presented at 'scancode' byte_read will present a latch signal 
--! eg. '0,1'
--! 
--! \verbatim
--!                            +-----------------+
--!                            |                 |
--!                   reset -->|                 |--> dig0[7..0]
--!                            |                 |
--!                            |                 |--> dig1[7..0]
--! kbclock (50 MHz domain) -->|     showkey     |
--!                            |                 |--> scancode[7..0]
--!                            |                 |
--!  kbdata (50 MHz domain) -->|                 |--> byte_read
--!                            |                 |
--!                            +-----------------+
--!
--! Figure: component showkey
--!
--! \endverbatim
--!
--! \todo Complete documentation
--!
--------------------------------------------------------------------
LIBRARY ieee;
USE     ieee.std_logic_1164.all,
        ieee.numeric_std.all;    -- For unsigned variable
--------------------------------------------------------------------
ENTITY showkey IS
   PORT(
      reset     : IN  std_logic;                    -- reset signal active low '0'
      kbclock   : IN  std_logic;                    -- clock from keyboard in 50 MHz domain
      kbdata    : IN  std_logic;                    -- serial data from the keyboard in 50 MHz domain
      dig0,                                         -- show key pressed on display in hex (MSB)
      dig1      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- show key pressed on display in hex (LSB)
      scancode  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- received byte
      byte_read : OUT std_logic                     -- '1' if byte received 
   );
END showkey;
--------------------------------------------------------------------
ARCHITECTURE LogicFunction OF showkey IS
		
BEGIN 

	COUNT: PROCESS(kbclock, reset)
		VARIABLE   counter         : INTEGER RANGE 0 TO 255;
		VARIABLE byte_current, dig_buffer : STD_LOGIC_VECTOR(7 DOWNTO 0);
	BEGIN
		-- Add here the VHDL code for showkey
		IF reset = '1' THEN
		--! Wait for falling edge of kbclk
			IF falling_edge(kbclock) THEN
				--! Valid bit availble on kbdata
				IF counter = 0 THEN
					--! First bit of new byte received
					--! Store previous byte, byte_read = '0', counter++
					dig0 <= byte_current;
					dig1 <= dig_buffer;
					dig_buffer := byte_current;
					byte_read <= '0';
					counter := counter + 1;
				ELSE
					--! New bit received
					--! counter < 9
					IF counter < 9 THEN
						--! Store data temporary, byte_read='0', counter++
						byte_current(counter - 1) := kbdata;
						byte_read <= '0';
						counter := counter + 1;
					ELSE
						counter := counter + 1;

						--! Last bit received
						IF counter = 10 THEN
							--! All bits receive, byte_read='1', counter = 0
							byte_read <= '1';
							counter := 0;
							scancode <= byte_current;
							
						ELSE
							--! This may never occur
							--! ist gonna explode
						END IF;
					END IF;
				END IF;
			ELSE
				--! No vaild bit available
			END IF;
		ELSE
			--! Reset counters, registers and
			counter 			:= 0;
			byte_current 	:= X"00";
			dig_buffer 		:= X"00";
			scancode 		<= X"00";
			byte_read		<= '0';
			dig0				<= X"00";
			dig1				<= X"00";
		END IF;
	END PROCESS COUNT;
		
end LogicFunction;
--------------------------------------------------------------------

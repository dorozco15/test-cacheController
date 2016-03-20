library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity CacheController is
port (
		clock					: in std_logic;
		reset					: in std_LOGIC;
		MreIn					:	in STD_LOGIC;
		MweIn					:	in STD_LOGIC;
		addressIN			:	in STD_LOGIC_VECTOR(11 downto 0);
		addressOUT			:  out STD_LOGIC_VECTOR (11 downto 0);
		data_in				:  in STD_LOGIC_VECTOR(15 downto 0);
		data_out_cpu		:  out STD_LOGIC_VECTOR(15 downto 0);
		replaceStatusIn   :  in std_logic; 
		replaceStatusOut  :  out std_logic;
		data_block_in     :  in std_logic_vector(63 downto 0);
		address_block_in  :  in std_logic_vector(11 downto 0);
		delayReq				: out std_logic;
		
		----debug lines
		 read_data_d : out std_logic; 
 write_data_d : out std_logic;
 write_tag_d :  out std_logic;
 read_tag_d : out std_logic;
 write_block_d:  out std_logic;
-- data_block_d: out std_logic_vector(63 downto 0);
 tempDataIn_d : out std_logic_vector(15 downto 0);
 tempDataOut_d : out std_logic_vector(15 downto 0);
 tagIndex_d: out std_logic_vector(6 downto 0);
 lineIndex_d: out std_logic_vector(2 downto 0);
 wordIndex_d: out std_logic_vector(1 downto 0);
 hit_d: out STD_LOGIC; 
 --tagWrote_d: out std_logic;
tag_enable_d: out std_logic;
 data_enable_d: out std_logic;
 blockReplaced_d: out std_logic

  	
		);
		
end CacheController;

architecture behav of CacheController is
signal read_data :  std_logic; 
signal write_data :  std_logic;
signal write_tag :   std_logic;
signal read_tag :  std_logic;
signal write_block:  std_logic;
signal data_block: std_logic_vector(63 downto 0);
signal tempDataIn : std_logic_vector(15 downto 0);
signal tempDataOut : std_logic_vector(15 downto 0);
signal tagIndex: std_logic_vector(6 downto 0);
signal lineIndex: std_logic_vector(2 downto 0);
signal wordIndex: std_logic_vector(1 downto 0);
signal hit: STD_LOGIC; 
signal tagWrote: std_logic;
signal tag_enable: std_logic;
signal data_enable: std_logic;
signal blockReplaced: std_logic;
type state_type is (s0,s1,s2,s3,s4, s5, s6,s6b,s7,s8);
signal state: state_type;	
--signal replaceStatus : std_logic;



begin 
tagIndex <= addressIN(11 downto 5);
lineIndex <= addressIN(4 downto 2);
wordIndex <= addressIN (1 downto 0);
read_data <= MreIn;
write_data <= MweIn;
--write_tag <= '0';
--write_block<='0';
----debug assigns
read_data_d <= read_data;
 write_data_d <= write_data;
 write_tag_d <= write_tag;
 read_tag_d <= read_tag;
 write_block_d <= write_block;
 --data_block_d 	<= data_block;
 tempDataIn_d <=	tempDataIn;
 tempDataOut_d <= tempDataOut;
 tagIndex_d <= tagIndex;
 lineIndex_d <= lineIndex;
 wordIndex_d <= wordIndex;
 hit_d <= hit;
 --tagWrote_d <= tagWrote;
tag_enable_d <= tag_enable;
 data_enable_d <= data_enable;
 blockReplaced_d <=blockReplaced;

 
unit1 : TagMemory port map(tag_enable, clock, reset, 
tagIndex, hit, lineIndex, write_tag, read_tag);
unit2 : DataMemory port map(data_enable, clock, reset,
 read_data,write_data, lineIndex, tempDataOut, tempDataIn, wordIndex, 
 write_block, blockReplaced, data_block);

process (clock, reset, data_block)
begin 
	if (reset = '1')then
		write_tag <= '0';
		data_enable <='1';
		delayReq <= '0';
		replaceStatusOut <='0';
		state <=s0;
		
	else
		if (rising_edge(clock)) then
			case state is
				when s0 =>-- initialize the tagMemory and desable the data memory;
					tag_enable <= '1';
					read_tag <= '1';
					write_tag <= '0';
					
					data_enable <='0';
					delayReq <= '0';
					replaceStatusOut <='0';
					state <= s1;
					--if ((MweIn = '1') and (MreIn ='0')) then
						
				when s1 => ----check if theres a hit or miss
					if (hit ='1') then 
						data_enable <= '1';
						delayReq <= '0';
						if ((read_data = '1') and (write_data ='0')) then
--								read_data <= '1';
--								write_data <= '0';
								state <= s2;
						else	
							if ((write_data = '1') and (read_data ='0')) then 
--								write_data <= '1';
--								read_data <= '0';
								state <= s3;
							end if;
						end if;
					else --- if hit = 0 / miss
						addressOUT <= addressIN;
						replaceStatusOut <= '1';
						delayReq <= '1';
						state <= s4;
					end if;
				when s2 => ---send data to cpu
						data_out_cpu <= tempDataOut;
						state <= s0;----------
				when s3=> --- send data to dataMemory
						tempDataIn <= data_in;
						state <= s0;------------------
				when s4 => ---if block from MainMemory is available
						
						
						if (replaceStatusIn = '1') then 
							state <= s5;
						else 
							state<= s4; --stay in this state if not available
						end if;
				when s5 => --enable writing the new tag
					replaceStatusOut <= '0';
					write_tag <= '1';
					read_tag <= '0'; 
--					read_data<= '0';
--					write_data<= '0';
					state <= s6;
--				when s5b =>
--						if (tag_wrote = '1') then 
--							state <= s6;
--						else
--							state<= s5;
--						end if;
				when s6 => --write the block to the dataMemory
					write_block <= '0';
					data_block <= data_block_in;
					state <= s6b;
				when s6b => -- desable the write_block;
					write_block <= '0';
					state <= s7;
				when s7 => -- check if block was replaced;
					if (blockReplaced ='1') then 
						
						data_enable <= '1';--enable the dataMemory
						state <= s8;
						
					else 
						state <= s7;
					end if;
				when s8 => --read or write the new block;
					
					if ((read_data = '1') and (write_data ='0')) then
--								read_data <= '1';
--								write_data <= '0';
								state <= s2;
					else	
						if ((write_data = '1') and (read_data ='0')) then 
--								write_data <= '1';
--								read_data <= '0';
								state <= s3;
						end if;
					end if;
				when others =>
			end case;
			end if;
		end if;
	end process;
end behav;
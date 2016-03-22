library verilog;
use verilog.vl_types.all;
entity CacheController is
    port(
        clock_en        : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        MreIn           : in     vl_logic;
        MweIn           : in     vl_logic;
        addressIN       : in     vl_logic_vector(11 downto 0);
        addressOUT      : out    vl_logic_vector(11 downto 0);
        data_in         : in     vl_logic_vector(15 downto 0);
        data_out_cpu    : out    vl_logic_vector(15 downto 0);
        replaceStatusIn : in     vl_logic;
        replaceStatusOut: out    vl_logic;
        data_block_in   : in     vl_logic_vector(63 downto 0);
        address_block_in: in     vl_logic_vector(11 downto 0);
        delayReq        : out    vl_logic;
        done_out        : out    vl_logic;
        data_block_out  : out    vl_logic_vector(63 downto 0);
        read_data_d     : out    vl_logic;
        write_data_d    : out    vl_logic;
        write_tag_d     : out    vl_logic;
        read_tag_d      : out    vl_logic;
        write_block_d   : out    vl_logic;
        hit_d           : out    vl_logic;
        send_block_out_d: out    vl_logic;
        tag_enable_d    : out    vl_logic;
        data_enable_d   : out    vl_logic;
        blockReplaced_d : out    vl_logic;
        state_d         : out    vl_logic_vector(3 downto 0)
    );
end CacheController;

library verilog;
use verilog.vl_types.all;
entity CacheController_vlg_check_tst is
    port(
        addressOUT      : in     vl_logic_vector(11 downto 0);
        blockReplaced_d : in     vl_logic;
        data_block_out  : in     vl_logic_vector(63 downto 0);
        data_enable_d   : in     vl_logic;
        data_out_cpu    : in     vl_logic_vector(15 downto 0);
        delayReq        : in     vl_logic;
        done_out        : in     vl_logic;
        hit_d           : in     vl_logic;
        read_data_d     : in     vl_logic;
        read_tag_d      : in     vl_logic;
        replaceStatusOut: in     vl_logic;
        send_block_out_d: in     vl_logic;
        state_d         : in     vl_logic_vector(3 downto 0);
        tag_enable_d    : in     vl_logic;
        write_block_d   : in     vl_logic;
        write_data_d    : in     vl_logic;
        write_tag_d     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CacheController_vlg_check_tst;

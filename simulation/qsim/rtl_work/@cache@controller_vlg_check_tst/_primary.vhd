library verilog;
use verilog.vl_types.all;
entity CacheController_vlg_check_tst is
    port(
        addressOUT      : in     vl_logic_vector(11 downto 0);
        blockReplaced_d : in     vl_logic;
        data_enable_d   : in     vl_logic;
        data_out_cpu    : in     vl_logic_vector(15 downto 0);
        delayReq        : in     vl_logic;
        hit_d           : in     vl_logic;
        lineIndex_d     : in     vl_logic_vector(2 downto 0);
        read_data_d     : in     vl_logic;
        read_tag_d      : in     vl_logic;
        replaceStatusOut: in     vl_logic;
        tag_enable_d    : in     vl_logic;
        tagIndex_d      : in     vl_logic_vector(6 downto 0);
        tempDataIn_d    : in     vl_logic_vector(15 downto 0);
        tempDataOut_d   : in     vl_logic_vector(15 downto 0);
        wordIndex_d     : in     vl_logic_vector(1 downto 0);
        write_block_d   : in     vl_logic;
        write_data_d    : in     vl_logic;
        write_tag_d     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CacheController_vlg_check_tst;

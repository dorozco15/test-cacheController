library verilog;
use verilog.vl_types.all;
entity CacheController is
    port(
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
        read_data_d     : out    vl_logic;
        write_data_d    : out    vl_logic;
        write_tag_d     : out    vl_logic;
        read_tag_d      : out    vl_logic;
        write_block_d   : out    vl_logic;
        tempDataIn_d    : out    vl_logic_vector(15 downto 0);
        tempDataOut_d   : out    vl_logic_vector(15 downto 0);
        tagIndex_d      : out    vl_logic_vector(6 downto 0);
        lineIndex_d     : out    vl_logic_vector(2 downto 0);
        wordIndex_d     : out    vl_logic_vector(1 downto 0);
        hit_d           : out    vl_logic;
        tag_enable_d    : out    vl_logic;
        data_enable_d   : out    vl_logic;
        blockReplaced_d : out    vl_logic
    );
end CacheController;

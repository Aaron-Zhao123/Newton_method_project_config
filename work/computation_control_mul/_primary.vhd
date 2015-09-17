library verilog;
use verilog.vl_types.all;
entity computation_control_mul is
    generic(
        ZERO_ROW        : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        READ_PRE_LINES  : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        READ_WRITE_NEW_LINE: vl_logic_vector(0 to 1) := (Hi1, Hi0);
        CLEAR           : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        cnt_master      : in     vl_logic_vector(8 downto 0);
        clk             : in     vl_logic;
        computation_cycle: out    vl_logic_vector(6 downto 0);
        enable_for_input: out    vl_logic;
        we              : out    vl_logic;
        STATE           : out    vl_logic_vector(1 downto 0);
        write_enable    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ZERO_ROW : constant is 1;
    attribute mti_svvh_generic_type of READ_PRE_LINES : constant is 1;
    attribute mti_svvh_generic_type of READ_WRITE_NEW_LINE : constant is 1;
    attribute mti_svvh_generic_type of CLEAR : constant is 1;
end computation_control_mul;

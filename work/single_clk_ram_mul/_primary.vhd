library verilog;
use verilog.vl_types.all;
entity single_clk_ram_mul is
    generic(
        DATA_WIDTH      : integer := 16;
        ADDR_WIDTH      : integer := 7
    );
    port(
        data            : in     vl_logic_vector;
        addr            : in     vl_logic_vector;
        we              : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector;
        write_enable    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end single_clk_ram_mul;

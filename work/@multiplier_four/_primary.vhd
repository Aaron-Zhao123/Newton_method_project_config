library verilog;
use verilog.vl_types.all;
entity Multiplier_four is
    port(
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        p               : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        STATE           : out    vl_logic_vector(1 downto 0);
        computation_cycle_mul: out    vl_logic_vector(6 downto 0);
        cnt_mul         : out    vl_logic_vector(8 downto 0);
        In_vd           : in     vl_logic;
        Out_rd          : in     vl_logic;
        In_rd           : out    vl_logic;
        Out_vd          : out    vl_logic
    );
end Multiplier_four;

library verilog;
use verilog.vl_types.all;
entity D_FF_four_bits is
    port(
        in_plus         : in     vl_logic_vector(3 downto 0);
        in_minus        : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        out_plus        : out    vl_logic_vector(3 downto 0);
        out_minus       : out    vl_logic_vector(3 downto 0);
        write_enable    : in     vl_logic
    );
end D_FF_four_bits;

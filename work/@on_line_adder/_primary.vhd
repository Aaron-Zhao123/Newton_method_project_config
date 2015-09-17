library verilog;
use verilog.vl_types.all;
entity On_line_adder is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        z               : out    vl_logic_vector(1 downto 0)
    );
end On_line_adder;

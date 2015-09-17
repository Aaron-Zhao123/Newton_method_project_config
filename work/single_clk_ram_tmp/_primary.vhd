library verilog;
use verilog.vl_types.all;
entity single_clk_ram_tmp is
    port(
        q               : out    vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        w               : in     vl_logic_vector(6 downto 0);
        r               : in     vl_logic_vector(6 downto 0);
        we              : in     vl_logic;
        clk             : in     vl_logic
    );
end single_clk_ram_tmp;

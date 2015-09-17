library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        enable          : in     vl_logic;
        clk             : in     vl_logic;
        cnt             : out    vl_logic_vector(8 downto 0);
        write_enable    : in     vl_logic
    );
end counter;

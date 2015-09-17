library verilog;
use verilog.vl_types.all;
entity subtraction_four is
    port(
        clk             : in     vl_logic;
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        res             : out    vl_logic_vector(1 downto 0);
        In_vld          : in     vl_logic;
        In_rdy          : out    vl_logic;
        Out_vld         : out    vl_logic;
        Out_rdy         : in     vl_logic
    );
end subtraction_four;

library verilog;
use verilog.vl_types.all;
entity On_line_divider_stage_two is
    port(
        clk             : in     vl_logic;
        x_value         : in     vl_logic_vector(1 downto 0);
        d_value         : in     vl_logic_vector(1 downto 0);
        STATE           : out    vl_logic_vector(1 downto 0);
        cnt_master      : out    vl_logic_vector(8 downto 0);
        computation_cycle: out    vl_logic_vector(6 downto 0);
        q_value         : out    vl_logic_vector(1 downto 0);
        enable_input    : out    vl_logic;
        fixing_dis      : out    vl_logic;
        In_vd           : in     vl_logic;
        In_rd           : out    vl_logic;
        Out_vd          : out    vl_logic;
        Out_rd          : in     vl_logic
    );
end On_line_divider_stage_two;

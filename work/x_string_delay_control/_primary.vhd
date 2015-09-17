library verilog;
use verilog.vl_types.all;
entity x_string_delay_control is
    port(
        clk             : in     vl_logic;
        x_plus          : in     vl_logic_vector(3 downto 0);
        x_minus         : in     vl_logic_vector(3 downto 0);
        STATES          : in     vl_logic_vector(1 downto 0);
        x_plus_value    : out    vl_logic_vector(3 downto 0);
        x_minus_value   : out    vl_logic_vector(3 downto 0);
        write_enable    : in     vl_logic
    );
end x_string_delay_control;

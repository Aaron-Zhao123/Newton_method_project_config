library verilog;
use verilog.vl_types.all;
entity Adder_control_logic is
    port(
        cnt_master      : in     vl_logic_vector(8 downto 0);
        clk             : in     vl_logic;
        p               : in     vl_logic_vector(1 downto 0);
        STATE           : in     vl_logic_vector(1 downto 0);
        comp_cycle      : in     vl_logic_vector(6 downto 0);
        x_plus          : in     vl_logic_vector(3 downto 0);
        x_minus         : in     vl_logic_vector(3 downto 0);
        y_plus          : in     vl_logic_vector(3 downto 0);
        y_minus         : in     vl_logic_vector(3 downto 0);
        v_value_plus    : out    vl_logic_vector(8 downto 0);
        v_value_minus   : out    vl_logic_vector(8 downto 0);
        write_enable    : in     vl_logic
    );
end Adder_control_logic;

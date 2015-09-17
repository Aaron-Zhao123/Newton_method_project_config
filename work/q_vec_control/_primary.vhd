library verilog;
use verilog.vl_types.all;
entity q_vec_control is
    port(
        cnt_master      : in     vl_logic_vector(8 downto 0);
        computation_cycle: in     vl_logic_vector(6 downto 0);
        clk             : in     vl_logic;
        q_plus_vec      : in     vl_logic_vector(3 downto 0);
        q_minus_vec     : in     vl_logic_vector(3 downto 0);
        d_value         : in     vl_logic_vector(1 downto 0);
        STATE           : in     vl_logic_vector(1 downto 0);
        q_delayed_plus  : out    vl_logic_vector(3 downto 0);
        q_delayed_minus : out    vl_logic_vector(3 downto 0)
    );
end q_vec_control;

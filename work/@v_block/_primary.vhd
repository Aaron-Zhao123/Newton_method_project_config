library verilog;
use verilog.vl_types.all;
entity V_block is
    port(
        v_value_upper_plus: in     vl_logic_vector(3 downto 0);
        v_value_upper_minus: in     vl_logic_vector(3 downto 0);
        estimated_q     : out    vl_logic_vector(1 downto 0);
        borrower_up     : in     vl_logic;
        fixing          : in     vl_logic;
        pre_p_value     : in     vl_logic_vector(1 downto 0)
    );
end V_block;

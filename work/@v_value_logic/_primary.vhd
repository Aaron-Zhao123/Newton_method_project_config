library verilog;
use verilog.vl_types.all;
entity V_value_logic is
    port(
        cnt_master_dis  : in     vl_logic_vector(8 downto 0);
        x_value         : in     vl_logic_vector(1 downto 0);
        v_plus          : in     vl_logic_vector(3 downto 0);
        v_minus         : in     vl_logic_vector(3 downto 0);
        v_plus_new      : out    vl_logic_vector(3 downto 0);
        v_minus_new     : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        cnt_master      : in     vl_logic_vector(8 downto 0);
        computation_cycle: in     vl_logic_vector(6 downto 0);
        STATE           : in     vl_logic_vector(1 downto 0);
        v_upper_plus    : in     vl_logic_vector(3 downto 0);
        v_upper_minus   : in     vl_logic_vector(3 downto 0);
        cout            : in     vl_logic_vector(1 downto 0);
        v_upper_plus_result: out    vl_logic_vector(3 downto 0);
        v_upper_minus_result: out    vl_logic_vector(3 downto 0);
        cin             : out    vl_logic_vector(1 downto 0);
        borrower_up     : out    vl_logic;
        write_enable    : in     vl_logic;
        carry_feedback  : out    vl_logic
    );
end V_value_logic;

library verilog;
use verilog.vl_types.all;
entity w_value_logic_fix is
    port(
        STATE           : in     vl_logic_vector(1 downto 0);
        cnt_master      : in     vl_logic_vector(8 downto 0);
        computation_cycle: in     vl_logic_vector(6 downto 0);
        clk             : in     vl_logic;
        carry_feedback  : in     vl_logic;
        v_upper_plus    : in     vl_logic_vector(3 downto 0);
        v_upper_minus   : in     vl_logic_vector(3 downto 0);
        d_plus_selected : in     vl_logic_vector(3 downto 0);
        d_minus_selected: in     vl_logic_vector(3 downto 0);
        w_plus_res      : in     vl_logic_vector(3 downto 0);
        w_minus_res     : in     vl_logic_vector(3 downto 0);
        d_plus_controlled: out    vl_logic_vector(3 downto 0);
        d_minus_controlled: out    vl_logic_vector(3 downto 0);
        residue_plus    : out    vl_logic_vector(3 downto 0);
        residue_minus   : out    vl_logic_vector(3 downto 0);
        res_upper_plus  : out    vl_logic_vector(3 downto 0);
        res_upper_minus : out    vl_logic_vector(3 downto 0);
        cout_two        : in     vl_logic_vector(1 downto 0);
        cin_two         : out    vl_logic_vector(1 downto 0);
        rd_addr         : out    vl_logic_vector(6 downto 0);
        wr_addr         : out    vl_logic_vector(6 downto 0);
        d_upper_plus    : in     vl_logic_vector(1 downto 0);
        d_upper_minus   : in     vl_logic_vector(1 downto 0);
        q_value         : in     vl_logic_vector(1 downto 0);
        error_flag      : in     vl_logic;
        write_enable    : in     vl_logic
    );
end w_value_logic_fix;

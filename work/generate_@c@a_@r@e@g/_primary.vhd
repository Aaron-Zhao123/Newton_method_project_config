library verilog;
use verilog.vl_types.all;
entity generate_CA_REG is
    generic(
        Num_bits        : integer := 4
    );
    port(
        STATE           : in     vl_logic_vector(1 downto 0);
        rd_addr         : in     vl_logic_vector(6 downto 0);
        computation_cycles: in     vl_logic_vector(6 downto 0);
        x_input         : in     vl_logic_vector(1 downto 0);
        p_input         : in     vl_logic_vector(1 downto 0);
        x_plus          : out    vl_logic_vector;
        x_minus         : out    vl_logic_vector;
        p_plus          : out    vl_logic_vector;
        p_minus         : out    vl_logic_vector;
        clk             : in     vl_logic;
        cnt             : in     vl_logic_vector(8 downto 0);
        error_flag      : in     vl_logic;
        we              : in     vl_logic;
        d_upper_plus    : out    vl_logic_vector(1 downto 0);
        d_upper_minus   : out    vl_logic_vector(1 downto 0);
        fixing          : in     vl_logic;
        write_enable    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Num_bits : constant is 1;
end generate_CA_REG;

library verilog;
use verilog.vl_types.all;
entity generate_CA_REG_mul is
    generic(
        Num_bits        : integer := 4
    );
    port(
        computation_cycles: in     vl_logic_vector(6 downto 0);
        x_input         : in     vl_logic_vector(1 downto 0);
        y_input         : in     vl_logic_vector(1 downto 0);
        x_plus          : out    vl_logic_vector;
        x_minus         : out    vl_logic_vector;
        y_plus          : out    vl_logic_vector;
        y_minus         : out    vl_logic_vector;
        clk             : in     vl_logic;
        cnt             : in     vl_logic_vector(8 downto 0);
        we              : in     vl_logic;
        write_enable    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Num_bits : constant is 1;
end generate_CA_REG_mul;

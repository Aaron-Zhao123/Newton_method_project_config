library verilog;
use verilog.vl_types.all;
entity On_line_parallel_adder is
    generic(
        bits            : integer := 4;
        delay           : integer := 5
    );
    port(
        x_plus          : in     vl_logic_vector;
        x_minus         : in     vl_logic_vector;
        y_plus          : in     vl_logic_vector;
        y_minus         : in     vl_logic_vector;
        residue_plus    : in     vl_logic_vector;
        residue_minus   : in     vl_logic_vector;
        results_plus    : out    vl_logic_vector;
        results_minus   : out    vl_logic_vector;
        cin_x           : in     vl_logic_vector(1 downto 0);
        cin_y           : in     vl_logic_vector(1 downto 0);
        cout            : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of bits : constant is 1;
    attribute mti_svvh_generic_type of delay : constant is 1;
end On_line_parallel_adder;

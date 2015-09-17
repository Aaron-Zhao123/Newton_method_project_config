library verilog;
use verilog.vl_types.all;
entity Sample_V is
    generic(
        Num_bits        : integer := 4;
        on_line_delay   : integer := 3
    );
    port(
        positive_vec    : in     vl_logic_vector;
        negative_vec    : in     vl_logic_vector;
        sample_for_P    : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Num_bits : constant is 1;
    attribute mti_svvh_generic_type of on_line_delay : constant is 1;
end Sample_V;

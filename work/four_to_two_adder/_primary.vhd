library verilog;
use verilog.vl_types.all;
entity four_to_two_adder is
    generic(
        Num_bits        : integer := 8;
        on_line_delay   : integer := 3
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        w_sum           : in     vl_logic_vector;
        w_carry         : in     vl_logic_vector;
        sum             : out    vl_logic_vector;
        carry           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Num_bits : constant is 1;
    attribute mti_svvh_generic_type of on_line_delay : constant is 1;
end four_to_two_adder;

library verilog;
use verilog.vl_types.all;
entity SDVM_mul is
    generic(
        Num_bits        : integer := 4
    );
    port(
        clk             : in     vl_logic;
        STATE           : in     vl_logic_vector(1 downto 0);
        vec_in_plus     : in     vl_logic_vector;
        vec_in_minus    : in     vl_logic_vector;
        digit_select    : in     vl_logic_vector(1 downto 0);
        vec_out_plus    : out    vl_logic_vector;
        vec_out_minus   : out    vl_logic_vector;
        write_enable    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Num_bits : constant is 1;
end SDVM_mul;

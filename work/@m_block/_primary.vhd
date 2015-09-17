library verilog;
use verilog.vl_types.all;
entity M_block is
    port(
        sample_plus     : in     vl_logic_vector(3 downto 0);
        sample_minus    : in     vl_logic_vector(3 downto 0);
        P_value         : in     vl_logic_vector(1 downto 0);
        upper_bits_plus : out    vl_logic_vector(2 downto 0);
        upper_bits_minus: out    vl_logic_vector(2 downto 0)
    );
end M_block;

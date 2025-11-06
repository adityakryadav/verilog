# Makefile for simulation using iverilog + vvp
IVERILOG = iverilog
VVP = vvp
SIM = tb_gates

all: sim_all

sim_gates:
	$(IVERILOG) -o tb_gates.vvp tb/tb_gates.v src/gates.v
	$(VVP) tb_gates.vvp

sim_boolean:
	$(IVERILOG) -o tb_boolean.vvp tb/tb_boolean_expr.v src/boolean_expr.v
	$(VVP) tb_boolean.vvp

sim_muxes:
	$(IVERILOG) -o tb_muxes.vvp tb/tb_muxes.v src/muxes.v
	$(VVP) tb_muxes.vvp

sim_priority:
	$(IVERILOG) -o tb_pri.vvp tb/tb_priority_encoder.v src/priority_encoder.v
	$(VVP) tb_pri.vvp

sim_decoders:
	$(IVERILOG) -o tb_dec.vvp tb/tb_decoders.v src/decoders.v
	$(VVP) tb_dec.vvp

sim_all: sim_gates sim_boolean sim_muxes sim_priority sim_decoders

clean:
	rm -f *.vvp

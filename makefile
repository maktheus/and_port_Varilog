# Variáveis de compilação
VERILOG_FILES = src/rtl/and_Port/andPort.v
VERILOG_FILES_TB = src/sim/testbenches/andPort/andPort_tb.v
VVP_FILE = src/sim/testbenches/andPort/andPort_tb.vvp

# Comandos
all: compile run

compile:
	iverilog -o $(VVP_FILE) $(VERILOG_FILES) $(VERILOG_FILES_TB)

run:
	vvp $(VVP_FILE)

set_property DIRECTION IN [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {B[2]}]
set_property DIRECTION IN [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {B[1]}]
set_property DIRECTION IN [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {B[0]}]
set_property DIRECTION OUT [get_ports {G[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {G[2]}]
set_property DRIVE 12 [get_ports {G[2]}]
set_property SLEW SLOW [get_ports {G[2]}]
set_property DIRECTION OUT [get_ports {G[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {G[1]}]
set_property DRIVE 12 [get_ports {G[1]}]
set_property SLEW SLOW [get_ports {G[1]}]
set_property DIRECTION OUT [get_ports {G[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {G[0]}]
set_property DRIVE 12 [get_ports {G[0]}]
set_property SLEW SLOW [get_ports {G[0]}]
#revert back to original instance
current_instance -quiet
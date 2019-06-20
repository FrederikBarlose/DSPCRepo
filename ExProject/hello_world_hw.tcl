# TCL File Generated by Component Editor 18.1
# Wed May 22 11:11:35 CEST 2019
# DO NOT MODIFY


# 
# hello_world "hello_world" v1.0
#  2019.05.22.11:11:35
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module hello_world
# 
set_module_property DESCRIPTION ""
set_module_property NAME hello_world
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME hello_world
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mm_bus_counter
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file mm_coef.vhd VHDL PATH mm_coef.vhd
add_fileset_file hello_world.vhd VHDL PATH hello_world.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clockreset
# 
add_interface clockreset clock end
set_interface_property clockreset clockRate 0
set_interface_property clockreset ENABLED true
set_interface_property clockreset EXPORT_OF ""
set_interface_property clockreset PORT_NAME_MAP ""
set_interface_property clockreset CMSIS_SVD_VARIABLES ""
set_interface_property clockreset SVD_ADDRESS_GROUP ""

add_interface_port clockreset csi_clockreset_clk clk Input 1


# 
# connection point clockreset_reset
# 
add_interface clockreset_reset reset end
set_interface_property clockreset_reset associatedClock clockreset
set_interface_property clockreset_reset synchronousEdges DEASSERT
set_interface_property clockreset_reset ENABLED true
set_interface_property clockreset_reset EXPORT_OF ""
set_interface_property clockreset_reset PORT_NAME_MAP ""
set_interface_property clockreset_reset CMSIS_SVD_VARIABLES ""
set_interface_property clockreset_reset SVD_ADDRESS_GROUP ""

add_interface_port clockreset_reset csi_clockreset_reset_n reset_n Input 1


# 
# connection point s1_1
# 
add_interface s1_1 avalon end
set_interface_property s1_1 addressUnits WORDS
set_interface_property s1_1 associatedClock clockreset
set_interface_property s1_1 associatedReset clockreset_reset
set_interface_property s1_1 bitsPerSymbol 8
set_interface_property s1_1 burstOnBurstBoundariesOnly false
set_interface_property s1_1 burstcountUnits WORDS
set_interface_property s1_1 explicitAddressSpan 0
set_interface_property s1_1 holdTime 0
set_interface_property s1_1 linewrapBursts false
set_interface_property s1_1 maximumPendingReadTransactions 0
set_interface_property s1_1 maximumPendingWriteTransactions 0
set_interface_property s1_1 readLatency 0
set_interface_property s1_1 readWaitTime 1
set_interface_property s1_1 setupTime 0
set_interface_property s1_1 timingUnits Cycles
set_interface_property s1_1 writeWaitTime 0
set_interface_property s1_1 ENABLED true
set_interface_property s1_1 EXPORT_OF ""
set_interface_property s1_1 PORT_NAME_MAP ""
set_interface_property s1_1 CMSIS_SVD_VARIABLES ""
set_interface_property s1_1 SVD_ADDRESS_GROUP ""

add_interface_port s1_1 avs_s1_write write Input 1
add_interface_port s1_1 avs_s1_read read Input 1
add_interface_port s1_1 avs_s1_chipselect chipselect Input 1
add_interface_port s1_1 avs_s1_byteenable byteenable Input 2
add_interface_port s1_1 avs_s1_address address Input 8
add_interface_port s1_1 avs_s1_writedata writedata Input 16
add_interface_port s1_1 avs_s1_readdata readdata Output 16
set_interface_assignment s1_1 embeddedsw.configuration.isFlash 0
set_interface_assignment s1_1 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s1_1 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s1_1 embeddedsw.configuration.isPrintableDevice 0


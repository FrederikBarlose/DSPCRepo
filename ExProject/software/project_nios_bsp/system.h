/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu_0' in SOPC Builder design 'CPU_System'
 * SOPC Builder design path: ../../CPU_System.sopcinfo
 *
 * Generated: Wed May 08 11:22:08 CEST 2019
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x04010820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1b
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x04008020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x1b
#define ALT_CPU_NAME "cpu_0"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x04008000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x04010820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1b
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x04008020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x1b
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x04008000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x4011068
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x4011068
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x4011068
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "CPU_System"


/*
 * fpga_sdram configuration
 *
 */

#define ALT_MODULE_CLASS_fpga_sdram altera_avalon_new_sdram_controller
#define FPGA_SDRAM_BASE 0x0
#define FPGA_SDRAM_CAS_LATENCY 3
#define FPGA_SDRAM_CONTENTS_INFO
#define FPGA_SDRAM_INIT_NOP_DELAY 0.0
#define FPGA_SDRAM_INIT_REFRESH_COMMANDS 2
#define FPGA_SDRAM_IRQ -1
#define FPGA_SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FPGA_SDRAM_IS_INITIALIZED 1
#define FPGA_SDRAM_NAME "/dev/fpga_sdram"
#define FPGA_SDRAM_POWERUP_DELAY 100.0
#define FPGA_SDRAM_REFRESH_PERIOD 7.8125
#define FPGA_SDRAM_REGISTER_DATA_IN 1
#define FPGA_SDRAM_SDRAM_ADDR_WIDTH 0x19
#define FPGA_SDRAM_SDRAM_BANK_WIDTH 2
#define FPGA_SDRAM_SDRAM_COL_WIDTH 10
#define FPGA_SDRAM_SDRAM_DATA_WIDTH 16
#define FPGA_SDRAM_SDRAM_NUM_BANKS 4
#define FPGA_SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define FPGA_SDRAM_SDRAM_ROW_WIDTH 13
#define FPGA_SDRAM_SHARED_DATA 0
#define FPGA_SDRAM_SIM_MODEL_BASE 0
#define FPGA_SDRAM_SPAN 67108864
#define FPGA_SDRAM_STARVATION_INDICATOR 0
#define FPGA_SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define FPGA_SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define FPGA_SDRAM_T_AC 5.4
#define FPGA_SDRAM_T_MRD 3
#define FPGA_SDRAM_T_RCD 15.0
#define FPGA_SDRAM_T_RFC 70.0
#define FPGA_SDRAM_T_RP 15.0
#define FPGA_SDRAM_T_WR 14.0


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x4011068
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * onchip_memory2_1 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2_1 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_1_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_1_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_1_BASE 0x4008000
#define ONCHIP_MEMORY2_1_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_1_DUAL_PORT 0
#define ONCHIP_MEMORY2_1_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_1_INIT_CONTENTS_FILE "CPU_System_onchip_memory2_1"
#define ONCHIP_MEMORY2_1_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_1_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_1_IRQ -1
#define ONCHIP_MEMORY2_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_1_NAME "/dev/onchip_memory2_1"
#define ONCHIP_MEMORY2_1_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_1_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_1_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_1_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_1_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_1_SIZE_VALUE 32768
#define ONCHIP_MEMORY2_1_SPAN 32768
#define ONCHIP_MEMORY2_1_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_1_WRITABLE 1


/*
 * pio_input_0 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_input_0 altera_avalon_pio
#define PIO_INPUT_0_BASE 0x4011040
#define PIO_INPUT_0_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_INPUT_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_INPUT_0_CAPTURE 0
#define PIO_INPUT_0_DATA_WIDTH 8
#define PIO_INPUT_0_DO_TEST_BENCH_WIRING 0
#define PIO_INPUT_0_DRIVEN_SIM_VALUE 0
#define PIO_INPUT_0_EDGE_TYPE "NONE"
#define PIO_INPUT_0_FREQ 100000000
#define PIO_INPUT_0_HAS_IN 1
#define PIO_INPUT_0_HAS_OUT 0
#define PIO_INPUT_0_HAS_TRI 0
#define PIO_INPUT_0_IRQ -1
#define PIO_INPUT_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_INPUT_0_IRQ_TYPE "NONE"
#define PIO_INPUT_0_NAME "/dev/pio_input_0"
#define PIO_INPUT_0_RESET_VALUE 0
#define PIO_INPUT_0_SPAN 16
#define PIO_INPUT_0_TYPE "altera_avalon_pio"


/*
 * pio_output_0 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_output_0 altera_avalon_pio
#define PIO_OUTPUT_0_BASE 0x4011050
#define PIO_OUTPUT_0_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_OUTPUT_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_OUTPUT_0_CAPTURE 0
#define PIO_OUTPUT_0_DATA_WIDTH 8
#define PIO_OUTPUT_0_DO_TEST_BENCH_WIRING 0
#define PIO_OUTPUT_0_DRIVEN_SIM_VALUE 0
#define PIO_OUTPUT_0_EDGE_TYPE "NONE"
#define PIO_OUTPUT_0_FREQ 100000000
#define PIO_OUTPUT_0_HAS_IN 0
#define PIO_OUTPUT_0_HAS_OUT 1
#define PIO_OUTPUT_0_HAS_TRI 0
#define PIO_OUTPUT_0_IRQ -1
#define PIO_OUTPUT_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_OUTPUT_0_IRQ_TYPE "NONE"
#define PIO_OUTPUT_0_NAME "/dev/pio_output_0"
#define PIO_OUTPUT_0_RESET_VALUE 0
#define PIO_OUTPUT_0_SPAN 16
#define PIO_OUTPUT_0_TYPE "altera_avalon_pio"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x4011060
#define SYSID_ID 123456
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1557305356
#define SYSID_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_system configuration
 *
 */

#define ALT_MODULE_CLASS_timer_system altera_avalon_timer
#define TIMER_SYSTEM_ALWAYS_RUN 0
#define TIMER_SYSTEM_BASE 0x4011020
#define TIMER_SYSTEM_COUNTER_SIZE 32
#define TIMER_SYSTEM_FIXED_PERIOD 0
#define TIMER_SYSTEM_FREQ 100000000
#define TIMER_SYSTEM_IRQ 1
#define TIMER_SYSTEM_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_SYSTEM_LOAD_VALUE 99999
#define TIMER_SYSTEM_MULT 0.001
#define TIMER_SYSTEM_NAME "/dev/timer_system"
#define TIMER_SYSTEM_PERIOD 1
#define TIMER_SYSTEM_PERIOD_UNITS "ms"
#define TIMER_SYSTEM_RESET_OUTPUT 0
#define TIMER_SYSTEM_SNAPSHOT 1
#define TIMER_SYSTEM_SPAN 32
#define TIMER_SYSTEM_TICKS_PER_SEC 1000
#define TIMER_SYSTEM_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_SYSTEM_TYPE "altera_avalon_timer"


/*
 * timer_timestamp configuration
 *
 */

#define ALT_MODULE_CLASS_timer_timestamp altera_avalon_timer
#define TIMER_TIMESTAMP_ALWAYS_RUN 0
#define TIMER_TIMESTAMP_BASE 0x4011000
#define TIMER_TIMESTAMP_COUNTER_SIZE 32
#define TIMER_TIMESTAMP_FIXED_PERIOD 0
#define TIMER_TIMESTAMP_FREQ 100000000
#define TIMER_TIMESTAMP_IRQ 2
#define TIMER_TIMESTAMP_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_TIMESTAMP_LOAD_VALUE 99999
#define TIMER_TIMESTAMP_MULT 0.001
#define TIMER_TIMESTAMP_NAME "/dev/timer_timestamp"
#define TIMER_TIMESTAMP_PERIOD 1
#define TIMER_TIMESTAMP_PERIOD_UNITS "ms"
#define TIMER_TIMESTAMP_RESET_OUTPUT 0
#define TIMER_TIMESTAMP_SNAPSHOT 1
#define TIMER_TIMESTAMP_SPAN 32
#define TIMER_TIMESTAMP_TICKS_PER_SEC 1000
#define TIMER_TIMESTAMP_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TIMESTAMP_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */
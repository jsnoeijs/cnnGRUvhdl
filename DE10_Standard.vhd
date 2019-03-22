
---------------------------------------------------------
--  This code is generated by Terasic System Builder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity DE10_Standard is
port
(

	------------ CLOCK ------------
	CLOCK2_50       	:in    	std_logic;
	CLOCK3_50       	:in    	std_logic;
	CLOCK4_50       	:in    	std_logic;
	CLOCK_50        	:in    	std_logic;

	------------ KEY ------------
	KEY             	:in    	std_logic_vector(3 downto 0);

	------------ SW ------------
	-- SW              	:in    	std_logic_vector(9 downto 0);

	------------ LED ------------
	LEDR            	:out   	std_logic_vector(9 downto 0);

	------------ Seg7 ------------
	-- HEX0            	:out   	std_logic_vector(6 downto 0);
	-- HEX1            	:out   	std_logic_vector(6 downto 0);
	-- HEX2            	:out   	std_logic_vector(6 downto 0);
	-- HEX3            	:out   	std_logic_vector(6 downto 0);
	-- HEX4            	:out   	std_logic_vector(6 downto 0);
	-- HEX5            	:out   	std_logic_vector(6 downto 0);

	------------ SDRAM ------------
	 DRAM_ADDR       	:out   	std_logic_vector(12 downto 0);
	 DRAM_BA         	:out   	std_logic_vector(1 downto 0);
	 DRAM_CAS_N      	:out   	std_logic;
	 DRAM_CKE        	:out   	std_logic;
	 DRAM_CLK        	:out   	std_logic;
	 DRAM_CS_N       	:out   	std_logic;
	 DRAM_DQ         	:inout 	std_logic_vector(15 downto 0);
	 DRAM_LDQM       	:out   	std_logic;
	 DRAM_RAS_N      	:out   	std_logic;
	 DRAM_UDQM       	:out   	std_logic;
	 DRAM_WE_N       	:out   	std_logic;

	------------ VGA ------------
	-- VGA_BLANK_N     	:out   	std_logic;
	-- VGA_B           	:out   	std_logic_vector(7 downto 0);
	-- VGA_CLK         	:out   	std_logic;
	-- VGA_G           	:out   	std_logic_vector(7 downto 0);
	-- VGA_HS          	:out   	std_logic;
	-- VGA_R           	:out   	std_logic_vector(7 downto 0);
	-- VGA_SYNC_N      	:out   	std_logic;
	-- VGA_VS          	:out   	std_logic;

	------------ HPS ------------
	HPS_CONV_USB_N  	:inout 	std_logic;
	HPS_DDR3_ADDR   	:out   	std_logic_vector(14 downto 0);
	HPS_DDR3_BA     	:out   	std_logic_vector(2 downto 0);
	HPS_DDR3_CAS_N  	:out   	std_logic;
	HPS_DDR3_CKE    	:out   	std_logic;
	HPS_DDR3_CK_N   	:out   	std_logic;
	HPS_DDR3_CK_P   	:out   	std_logic;
	HPS_DDR3_CS_N   	:out   	std_logic;
	HPS_DDR3_DM     	:out   	std_logic_vector(3 downto 0);
	HPS_DDR3_DQ     	:inout 	std_logic_vector(31 downto 0);
	HPS_DDR3_DQS_N  	:inout 	std_logic_vector(3 downto 0);
	HPS_DDR3_DQS_P  	:inout 	std_logic_vector(3 downto 0);
	HPS_DDR3_ODT    	:out   	std_logic;
	HPS_DDR3_RAS_N  	:out   	std_logic;
	HPS_DDR3_RESET_N	:out   	std_logic;
	HPS_DDR3_RZQ    	:in    	std_logic;
	HPS_DDR3_WE_N   	:out   	std_logic;
	HPS_ENET_GTX_CLK	:out   	std_logic;
	HPS_ENET_INT_N  	:inout 	std_logic; -- not generated by Qsys
	HPS_ENET_MDC    	:out   	std_logic;
	HPS_ENET_MDIO   	:inout 	std_logic;
	HPS_ENET_RX_CLK 	:in    	std_logic;
	HPS_ENET_RX_DATA	:in    	std_logic_vector(3 downto 0);
	HPS_ENET_RX_DV  	:in    	std_logic;
	HPS_ENET_TX_DATA	:out   	std_logic_vector(3 downto 0);
	HPS_ENET_TX_EN  	:out   	std_logic;

	-- HPS_FLASH_DATA  	:inout 	std_logic_vector(3 downto 0);
	-- HPS_FLASH_DCLK  	:out   	std_logic;
	-- HPS_FLASH_NCSO  	:out   	std_logic;
	-- HPS_GSENSOR_INT 	:inout 	std_logic;
	-- HPS_I2C1_SCLK   	:inout 	std_logic;
	-- HPS_I2C1_SDAT   	:inout 	std_logic;
	-- HPS_I2C2_SCLK   	:inout 	std_logic;
	-- HPS_I2C2_SDAT   	:inout 	std_logic;
	-- HPS_I2C_CONTROL 	:inout 	std_logic;
	HPS_KEY         	:inout 	std_logic;
	-- HPS_LCM_BK      	:inout 	std_logic;
	-- HPS_LCM_D_C     	:inout 	std_logic;
	-- HPS_LCM_RST_N   	:inout 	std_logic;
	-- HPS_LCM_SPIM_CLK	:out   	std_logic;
	-- HPS_LCM_SPIM_MISO	:in    	std_logic;
	-- HPS_LCM_SPIM_MOSI	:out   	std_logic;
	-- HPS_LCM_SPIM_SS 	:out   	std_logic;
	HPS_LED         	:inout 	std_logic;
	HPS_LTC_GPIO    	:inout 	std_logic;
	HPS_SD_CLK      	:out   	std_logic;
	HPS_SD_CMD      	:inout 	std_logic;
	HPS_SD_DATA     	:inout 	std_logic_vector(3 downto 0);
	HPS_SPIM_CLK    	:out   	std_logic;
	HPS_SPIM_MISO   	:in    	std_logic;
	HPS_SPIM_MOSI   	:out   	std_logic;
	HPS_SPIM_SS     	:out   	std_logic;
	HPS_UART_RX     	:in    	std_logic;
	HPS_UART_TX     	:out   	std_logic;
	-- HPS_USB_CLKOUT  	:in    	std_logic;
	-- HPS_USB_DATA    	:inout 	std_logic_vector(7 downto 0);
	-- HPS_USB_DIR     	:in    	std_logic;
	-- HPS_USB_NXT     	:in    	std_logic;
	-- HPS_USB_STP     	:out   	std_logic;

	------------ GPIO, GPIO connect to GPIO Default ------------
	GPIO            	:inout 	std_logic_vector(35 downto 0)
);

end entity;



---------------------------------------------------------
--  Structural coding
---------------------------------------------------------


architecture rtl of DE10_Standard is
	signal DRAM_LOCKED_EXPORT : std_logic;
	component base_hps is
		port (
			accelerator_0_conduit_end_debug1  : out   std_logic;                                        --   accelerator_0_conduit_end.debug1
			accelerator_0_conduit_end_debug2  : out   std_logic;                                        --                            .debug2
			accelerator_0_conduit_end_debug3  : out   std_logic;                                        --                            .debug3
			accelerator_0_conduit_end_debug4  : out   std_logic;                                        --                            .debug4
			clk_clk                         : in    std_logic                     := 'X';             -- clk
			hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_io_hps_io_gpio_inst_GPIO35  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_io_hps_io_gpio_inst_GPIO54  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
			leds_export                     : out   std_logic_vector(7 downto 0);                     -- export
			memory_mem_a                    : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                   : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                   : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                 : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                  : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                 : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                 : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n              : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                  : out   std_logic;                                        -- mem_odt
			memory_mem_dm                   : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n                   : in    std_logic                     := 'X';              -- reset_n
			new_sdram_controller_0_wire_addr  : out   std_logic_vector(12 downto 0);                    -- addr
			new_sdram_controller_0_wire_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			new_sdram_controller_0_wire_cas_n : out   std_logic;                                        -- cas_n
			new_sdram_controller_0_wire_cke   : out   std_logic;                                        -- cke
			new_sdram_controller_0_wire_cs_n  : out   std_logic;                                        -- cs_n
			new_sdram_controller_0_wire_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			new_sdram_controller_0_wire_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
			new_sdram_controller_0_wire_ras_n : out   std_logic;                                        -- ras_n
			new_sdram_controller_0_wire_we_n  : out   std_logic;                                        -- we_n
			pll_0_locked_export               : out   std_logic;                                        -- export
			pll_0_outclk2_clk                 : out   std_logic                                        -- clk
		);
	end component base_hps;

begin

	u0 : component base_hps
		port map (
		
			accelerator_0_conduit_end_debug1 => GPIO(0),                                     --   accelerator_0_conduit_end.debug1
			accelerator_0_conduit_end_debug2 => GPIO(1),                                       --                            .debug2
			accelerator_0_conduit_end_debug3 => GPIO(2),                                     --                            .debug3
			accelerator_0_conduit_end_debug4 => GPIO(3),                                     --                            .debug4
			clk_clk                         => CLOCK_50,                         --    clk.clk
			hps_io_hps_io_emac1_inst_TX_CLK => HPS_ENET_GTX_CLK,       -- hps_io.hps_io_emac0_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0   => HPS_ENET_TX_DATA(0),   --       .hps_io_emac0_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1   => HPS_ENET_TX_DATA(1),   --       .hps_io_emac0_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2   => HPS_ENET_TX_DATA(2),   --       .hps_io_emac0_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3   => HPS_ENET_TX_DATA(3),   --       .hps_io_emac0_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0   => HPS_ENET_RX_DATA(0),   --       .hps_io_emac0_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO   => HPS_ENET_MDIO,       --       .hps_io_emac0_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC    => HPS_ENET_MDC,    --       .hps_io_emac0_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL => HPS_ENET_RX_DV, --       .hps_io_emac0_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL => HPS_ENET_TX_EN, --       .hps_io_emac0_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK => HPS_ENET_RX_CLK, --       .hps_io_emac0_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1   => HPS_ENET_RX_DATA(1),   --       .hps_io_emac0_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2   => HPS_ENET_RX_DATA(2),   --       .hps_io_emac0_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3   => HPS_ENET_RX_DATA(3),   --       .hps_io_emac0_inst_RXD3
			hps_io_hps_io_gpio_inst_GPIO35  => HPS_ENET_INT_N,
			
			hps_io_hps_io_sdio_inst_CMD     => HPS_SD_CMD,     --       .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0      => HPS_SD_DATA(0),      --       .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1      => HPS_SD_DATA(1),      --       .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK     => HPS_SD_CLK,     --       .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2      => HPS_SD_DATA(2),      --       .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3      => HPS_SD_DATA(3),      --       .hps_io_sdio_inst_D3
			
			hps_io_hps_io_spim1_inst_CLK    => HPS_SPIM_CLK,         -- hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI   => HPS_SPIM_MOSI,        -- hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO   => HPS_SPIM_MISO,        -- hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0    => HPS_SPIM_SS,          -- hps_io_spim1_inst_SS0

			hps_io_hps_io_uart0_inst_RX     => HPS_UART_RX,  --       .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX     => HPS_UART_TX,     --       .hps_io_uart0_inst_TX
			
			memory_mem_a                    => HPS_DDR3_ADDR,                    -- memory.mem_a
			memory_mem_ba                   => HPS_DDR3_BA,                   --       .mem_ba
			memory_mem_ck                   => HPS_DDR3_CK_P,                   --       .mem_ck
			memory_mem_ck_n                 => HPS_DDR3_CK_N,                 --       .mem_ck_n
			memory_mem_cke                  => HPS_DDR3_CKE,                  --       .mem_cke
			memory_mem_cs_n                 => HPS_DDR3_CS_N,                 --       .mem_cs_n
			memory_mem_ras_n                => HPS_DDR3_RAS_N,                --       .mem_ras_n
			memory_mem_cas_n                => HPS_DDR3_CAS_N,                --       .mem_cas_n
			memory_mem_we_n                 => HPS_DDR3_WE_N,                 --       .mem_we_n
			memory_mem_reset_n              => HPS_DDR3_RESET_N,              --       .mem_reset_n
			memory_mem_dq                   => HPS_DDR3_DQ,                   --       .mem_dq
			memory_mem_dqs                  => HPS_DDR3_DQS_P,                   --       .mem_dqs
			memory_mem_dqs_n                => HPS_DDR3_DQS_N,                --       .mem_dqs_n
			memory_mem_odt                  => HPS_DDR3_ODT,                  --       .mem_odt
			memory_mem_dm                   => HPS_DDR3_DM,                   --       .mem_dm
			memory_oct_rzqin                => HPS_DDR3_RZQ,                --       .oct_rzqin
			
			reset_reset_n                   => KEY(0),                   --  reset.reset_n
			hps_io_hps_io_gpio_inst_GPIO54  => HPS_KEY,
			leds_export                     => LEDR(7 downto 0),                     --   leds.export
			
			new_sdram_controller_0_wire_addr  => DRAM_ADDR,				                    -- addr
			new_sdram_controller_0_wire_ba    => DRAM_BA,                    -- ba
			new_sdram_controller_0_wire_cas_n => DRAM_CAS_N,                                       -- cas_n
			new_sdram_controller_0_wire_cke   => DRAM_CKE,                                        -- cke
			new_sdram_controller_0_wire_cs_n  => DRAM_CS_N,                                       -- cs_n
			new_sdram_controller_0_wire_dq    => DRAM_DQ,  -- dq
			new_sdram_controller_0_wire_dqm(0) => DRAM_LDQM,  
			new_sdram_controller_0_wire_dqm(1) => DRAM_UDQM,			-- dqm
			new_sdram_controller_0_wire_ras_n => DRAM_RAS_N,                                      -- ras_n
			new_sdram_controller_0_wire_we_n  => DRAM_WE_N,                                       -- we_n
			pll_0_locked_export               => DRAM_LOCKED_EXPORT,                                      -- export
			pll_0_outclk2_clk                 => DRAM_CLK
		);


end rtl;

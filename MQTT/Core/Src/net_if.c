/*
 * network.c
 *
 *  Created on: Jul 13, 2024
 *      Author: BLUEBIRD
 */


#include <net_if.h>

#include "spi.h"
#include <stdbool.h>
#include "socket.h"
#include "dhcp.h"
#include "dns.h"



volatile bool ip_assigned = false;
// 1K should be enough, see https://forum.wiznet.io/t/topic/1612/2
uint8_t dhcp_buffer[1024];
// 1K seems to be enough for this buffer as well
uint8_t dns_buffer[1024];

void csEnable(void)
{
	HAL_GPIO_WritePin(WIZCHIP_CS_PORT, WIZCHIP_CS_PIN, GPIO_PIN_RESET);
}

void csDisable(void)
{
	HAL_GPIO_WritePin(WIZCHIP_CS_PORT, WIZCHIP_CS_PIN, GPIO_PIN_SET);
}

void spiWriteByte(uint8_t tx)
{
	uint8_t rx;
	HAL_SPI_TransmitReceive(&WIZCHIP_SPI, &tx, &rx, 1, 10);
}

uint8_t spiReadByte(void)
{
	uint8_t rx = 0, tx = 0xFF;
	HAL_SPI_TransmitReceive(&WIZCHIP_SPI, &tx, &rx, 1, 10);
	return rx;
}


void Wizchip_Init(){

	csDisable();
	reg_wizchip_spi_cbfunc(spiReadByte, spiWriteByte);
	reg_wizchip_cs_cbfunc(csEnable, csDisable);

	uint8_t tmp;
	//w5500, w5200
#if _WIZCHIP_ >= W5200
	uint8_t memsize[2][8] = { {2,2,2,2,2,2,2,2},{2,2,2,2,2,2,2,2}};
#else
	uint8_t memsize[2][4] = { {2,2,2,2},{2,2,2,2}};
#endif
	if(ctlwizchip(CW_INIT_WIZCHIP,(void*)memsize) == -1)
	{

		UART_Printf("WIZCHIP Initialized fail.\r\n", 1, 10);
	  return;
	}
	/* PHY link status check */
	do {
		if(ctlwizchip(CW_GET_PHYLINK, (void*)&tmp) == -1)
		{
			UART_Printf("Unknown PHY Link status.\r\n", 1, 10);
		  return;
		}
	} while (tmp == PHY_LINK_OFF);

}

void Callback_IPAssigned(void) {
    UART_Printf("Callback: IP assigned! Leased time: %d sec\r\n", getDHCPLeasetime());
    ip_assigned = true;
}

void Callback_IPConflict(void) {
    UART_Printf("Callback: IP conflict!\r\n");
}

void Network_Init(void)
{
	Wizchip_Init();

	UART_Printf("Calling DHCP_init()...\r\n");
	wiz_NetInfo net_info = {
	  		.mac = { 0x00, 0x08, 0xdc, 0xab, 0xcd, 0xef },
			.ip = { 192, 168, 0, 239 },
	     	.sn = { 255, 255, 255, 0 },
			.gw = { 192, 168, 0, 1 } ,
			.dns ={8,8,8,8},
	        .dhcp = NETINFO_DHCP
	};

	setSHAR(net_info.mac);
	DHCP_init(DHCP_SOCKET, dhcp_buffer);

	UART_Printf("Registering DHCP callbacks...\r\n");
		reg_dhcp_cbfunc(
	        Callback_IPAssigned,
	        Callback_IPAssigned,
	        Callback_IPConflict
	    );

	UART_Printf("Calling DHCP_run()...\r\n");
	// actually should be called in a loop, e.g. by timer
	uint32_t ctr = 10000;
	while((!ip_assigned) && (ctr > 0)) {
	        DHCP_run();
	        ctr--;
	}
	if(!ip_assigned) {
	     UART_Printf("\r\nIP was not assigned :(\r\n");
	     return;
	}

	getIPfromDHCP(net_info.ip);
	getGWfromDHCP(net_info.gw);
	getSNfromDHCP(net_info.sn);

	uint8_t dns[4];
	getDNSfromDHCP(dns);

	UART_Printf("IP:  %d.%d.%d.%d\r\nGW:  %d.%d.%d.%d\r\nNet: %d.%d.%d.%d\r\nDNS: %d.%d.%d.%d\r\n",
	        net_info.ip[0], net_info.ip[1], net_info.ip[2], net_info.ip[3],
	        net_info.gw[0], net_info.gw[1], net_info.gw[2], net_info.gw[3],
	        net_info.sn[0], net_info.sn[1], net_info.sn[2], net_info.sn[3],
	        dns[0], dns[1], dns[2], dns[3]
	);

	UART_Printf("Calling wizchip_setnetinfo()...\r\n");

	wizchip_setnetinfo(&net_info);

	wiz_NetInfo tmp_info;

	UART_Printf("Set IP:  %d.%d.%d.%d\r\nGW:  %d.%d.%d.%d\r\nNet: %d.%d.%d.%d\r\nDNS: %d.%d.%d.%d\r\n",
	              net_info.ip[0], net_info.ip[1], net_info.ip[2], net_info.ip[3],
	              net_info.gw[0], net_info.gw[1], net_info.gw[2], net_info.gw[3],
	              net_info.sn[0], net_info.sn[1], net_info.sn[2], net_info.sn[3],
	  			net_info.dns[0], net_info.dns[1], net_info.dns[2], net_info.dns[3]
	          );

	memset(&tmp_info,0x00,sizeof(wiz_NetInfo));

	wizchip_getnetinfo(&tmp_info);

	UART_Printf("Get IP:  %d.%d.%d.%d\r\nGW:  %d.%d.%d.%d\r\nNet: %d.%d.%d.%d\r\nDNS: %d.%d.%d.%d\r\n",
	    		tmp_info.ip[0], tmp_info.ip[1], tmp_info.ip[2], tmp_info.ip[3],
				tmp_info.gw[0], tmp_info.gw[1], tmp_info.gw[2], tmp_info.gw[3],
				tmp_info.sn[0], tmp_info.sn[1], tmp_info.sn[2], tmp_info.sn[3],
				tmp_info.dns[0], tmp_info.dns[1], tmp_info.dns[2], tmp_info.dns[3]
	        );


	UART_Printf("Calling DNS_init()...\r\n");

	DNS_init(DNS_SOCKET, dns_buffer);


	uint8_t addr[4];

	    {
	        char domain_name[] = "eax.me";
	        UART_Printf("Resolving domain name \"%s\"...\r\n", domain_name);
	        int8_t res = DNS_run(dns, (uint8_t*)&domain_name, addr);
	        if(res != 1) {
	            UART_Printf("DNS_run() failed, res = %d", res);
	            return;
	        }
	        UART_Printf("Result: %d.%d.%d.%d\r\n", addr[0], addr[1], addr[2], addr[3]);
	    }

	    UART_Printf("Creating socket...\r\n");
	    uint8_t http_socket = HTTP_SOCKET;
	    uint8_t code = socket(http_socket, Sn_MR_TCP, 10888, 0);
	    if(code != http_socket) {
	        UART_Printf("socket() failed, code = %d\r\n", code);
	        return;
	    }

	    UART_Printf("Socket created, connecting...\r\n");
	    code = connect(http_socket, addr, 80);
	    if(code != SOCK_OK) {
	        UART_Printf("connect() failed, code = %d\r\n", code);
	        close(http_socket);
	        return;
	    }

	    UART_Printf("Connected, sending HTTP request...\r\n");
	    {
	        char req[] = "GET / HTTP/1.0\r\nHost: eax.me\r\n\r\n";
	        uint16_t len = sizeof(req) - 1;
	        uint8_t* buff = (uint8_t*)&req;
	        while(len > 0) {
	            UART_Printf("Sending %d bytes...\r\n", len);
	            int32_t nbytes = send(http_socket, buff, len);
	            if(nbytes <= 0) {
	                UART_Printf("send() failed, %d returned\r\n", nbytes);
	                close(http_socket);
	                return;
	            }
	            UART_Printf("%d bytes sent!\r\n", nbytes);
	            len -= nbytes;
	        }
	    }

	    UART_Printf("Request sent. Reading response...\r\n");
	    {
	        char buff[32];
	        for(;;) {
	            int32_t nbytes = recv(http_socket, (uint8_t*)&buff, sizeof(buff)-1);
	            if(nbytes == SOCKERR_SOCKSTATUS) {
	                UART_Printf("\r\nConnection closed.\r\n");
	                break;
	            }

	            if(nbytes <= 0) {
	                UART_Printf("\r\nrecv() failed, %d returned\r\n", nbytes);
	                break;
	            }

	            buff[nbytes] = '\0';
	            UART_Printf("%s", buff);
	        }
	    }

	    UART_Printf("Closing socket.\r\n");
	    close(http_socket);
}

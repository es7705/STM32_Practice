/*
 * network.h
 *
 *  Created on: Jul 13, 2024
 *      Author: BLUEBIRD
 */

#ifndef INC_NET_IF_H_
#define INC_NET_IF_H_

#include "main.h"


#define WIZCHIP_SPI  			hspi1
#define WIZCHIP_CS_PIN			GPIO_PIN_6
#define WIZCHIP_CS_PORT			GPIOB

#define DHCP_SOCKET     0
#define DNS_SOCKET      1
#define HTTP_SOCKET     2
#define TCP_SOCKET		3

void Network_Init(void);

#endif /* INC_NET_IF_H_ */

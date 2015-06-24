clear;
clc;
disp("--------------Example 2.3---------------")
// display the example
printf("Each device(computer or router) has a pair of addresses (logical and physical) for each connection. In this\ncase, each computer is connected to only one link and therefore has only one pair of addresses. Each router,\nhowever, is connected to three networks . So each router has three pairs of addresses,one for each\nconnection. Although it may obvious that each router must have a separate physical address for each connection,\n;it may not be obvious why it needs a logical address for each connection.");
printf("\n\nIn this example,the computer with logical address A and physical address 10 needs to send a packet to\nthe computer with logical address P and physical address 95. The sender encapsulates its data\nin a packet at the network layer and adds two logical addresses (A and P). The logical source address comes before the logical destination address .\nThe network layer, however, needs to find the physical address of the next hop before the packet can be\ndelivered. The network layer consults its routing table and finds the logical address of the next hop (router 1) to be F.\nThe ARP finds the physical address of router 1 that corresponds to the logical address of 20. Now the network layer passes\nthis address to the data link layer, which in turn, encapsulates the packet with physical destination address 20 and physical source address 10.\n\n");
printf("The frame is received by every device on LAN 1, but is discarded by all except router 1, which finds that\nthe destination physical address in the frame matches with its own physical address. The router decapsulates the\npacket from the frame to read the logical destination address P. Since the logical destination address does not match the\nrouters logical address, the router knows that the packet needs to be forwarded. The router consults its routing table\nand ARP to find the physical destination address of the next hop (router 2), creates a new frame, encapsulates the packet, and sends it to router 2.\n\n");
printf("The source physical address changes from 10 to 99. The destination physical address changes from 20 (router 1 physical address) to 33\n(router 2 physical address). The logical source and destination addresses must remain the same; otherwise the packet will be lost.\n\n");
printf("At router 2 we have a similar scenario. The physical addresses are changed, and a new frame is sent to the destination computer.\nWhen the frame reaches the destination, the packet is decapsulated. The destination logical address P matches the logical address\nof the computer. The data are decapsulated from the packet and delivered to the upper layer.")
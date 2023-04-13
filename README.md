# FPGA_based-bank-SBqM-system
Our design description 

The proposed system, called SBqM™, is to display various information about the status of the queue. 
Detailed specification of our SBqM™ is as follows:   
 Our SBqM System is designed have 7 blocks 
1.	Clock divider 
2.	Debouncer
3.	FSM
4.	Queue counter 
5.	ROM
6.	Decoder PCounter
7.	Decoder Wtime 

•	SBqM designed with asynchronous Rest when we rest it and has no tellers whatever the number of clients then Wtime will be 31 Sec because there are no tellers then you will wait as long as possible .

•	Then when tellers start to come and start to serve clients then the waiting time in seconds, could approximately be given by the formulas: Wtime (Pcount = 0) = 0, Wtime (Pcount  0,Tcount) = 3*(Pcount+Tcount-1)/Tcount


•	Our SBqM has flag to indicate when the queue is Empty and another one to indicate when the queue is Full

•	We use two sensors one to indicate when client enter the queue only from the back and the other to Indicate when client leaves the queue only from the front end

•	And use three switches to represent the number of tellers 

•	Then we display the number of clients in queue and the waiting time on Seven Segment Display.

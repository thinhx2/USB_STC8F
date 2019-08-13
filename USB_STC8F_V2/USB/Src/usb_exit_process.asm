
// Written By : Thanh Tung
// E-Mail     : electricthanhtung@gmail.com
// Facebook   : https://www.facebook.com/electricthanhtung

#define PORT		0xB0

NAME	USB_EXIT_PROCESS
	
?PR?usb_exit_process?USB_EXIT_PROCESS SEGMENT CODE
	EXTRN	DATA (UEPF)
	PUBLIC usb_exit_process
	RSEG  ?PR?usb_exit_process?USB_EXIT_PROCESS
		
usb_exit_process:
	;POP ACC
	;POP ACC
	POP 0x07
	POP 0x06
	POP 0x05
	POP 0x04
	POP 0x03
	POP 0x02
	POP 0x01
	POP 0x00
	POP PSW
	POP DPL
	POP DPH
	POP B
	POP ACC
	MOV UEPF, #1
	RET
		
	END
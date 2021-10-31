ldr R3, =mas
    ldrb R4, [R3,R0]
    ldrb R5, [R3,R1]
    cmp R5, R4
    BLT if_yes1
	
	
	
	
	
	
	Stack_size EQU 0x20000100
    
    THUMB
    PRESERVE8
        
    AREA RESET, CODE, READONLY
        
    DCD Stack_size
    DCD Reset_Handler
        
        
Reset_Handler PROC
    IMPORT __main
    B __main
    ENDP
    END
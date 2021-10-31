Stack_Size EQU 0x400
	
    AREA STACK, NOINIT, READWRITE, ALIGN = 3
Stack_Mem    SPACE Stack_Size
__initial_sp

Heap_Size EQU 0x200
	AREA HEAP, NOINIT, READWRITE, ALIGN = 3
__heap_base
Heap_Mem    SPACE Heap_Size
__heap_limit
    
    THUMB
    PRESERVE8
        
    AREA RESET, DATA, READONLY
        
	DCD __initial_sp
	DCD Reset_Handler
        
	AREA |.text|, CODE, READONLY
        
Reset_Handler PROC
	
    IMPORT __main
    LDR R0, =__main
	BX R0
	ENDP
	
	IMPORT __use_two_region_memory
    EXPORT __user_initial_stackheap

__user_initial_stackheap
	LDR R0, =Heap_Mem
	LDR R1, =(Stack_Mem + Stack_Size)
	LDR R2, =(Heap_Mem + Heap_Size)
	LDR R3, =Stack_Mem
	
    END
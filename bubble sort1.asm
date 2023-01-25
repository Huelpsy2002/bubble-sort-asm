MOV [0000H] , 0FFH  
MOV [0001H] , 3CH
MOV [0002H] , 0AH
MOV [0003H] , 07H
MOV [0004H] , 01H

MOV CX , 0000H 
L1:
  MOV BX , 0000H 
  MOV SI,0000H
 
  INC CX 
  CMP CX,0005H
  JNZ L2  
HLT  
L2: 
  
   MOV DL , [SI]
   CMP DL,[SI+01H]
   JA COMP
NEXTCMP:  
   
   INC BX  
   MOV AX , 0005H 
   
   SUB AX ,CX 
   
   CMP BX,AX  
   JNZ L2
   JMP L1
   
COMP: 
   MOV AL, DL
   MOV DL, [SI+01H]
   MOV [SI], DL
   MOV [SI+01H],AL
 
  MOV AL,00H
  INC SI
  JMP NEXTCMP 
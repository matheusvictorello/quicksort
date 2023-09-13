.section ".text.init"
        .global sort
 
smallA:
        test2a:
                lw t3, 0(a1)
                lw a4, 0(a2)
                bgt a4, t3, voltaA
                sw t3, 0(a2)
                sw a4, 0(a1)
                j voltaA
        test3a:
                lw t3, 0(a1)
                lw a4, 4(a1)
                lw t5, 8(a1)

                bge t3, a4, d1a
                bge t3, t5, d2a
                bge a4, t5, d4a
                j voltaA
        d4a:
                sw a4, 8(a1)
                sw t5, 4(a1)
                j voltaA
        d2a:
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                j voltaA
        d1a:
                bge t3, t5, d3a
                sw t3, 4(a1)
                sw a4, 0(a1)
                j voltaA
        d3a:
                bge a4, t5, d5a
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                j voltaA
        d5a:
                sw t3, 8(a1)
                sw t5, 0(a1)
                j voltaA
        test4a:
                lw t3, 0(a1)
                lw a4, 4(a1)
                lw t5, 8(a1)
                lw t6, 12(a1)

                bge t3, a4, e1a
                bge t5, t6, e2a
                bge t3, t5, e4a
                bge a4, t6, e8a
                bge a4, t5, e14a
                j voltaA
        e14a:
                sw a4, 8(a1)
                sw t5, 4(a1)
                j voltaA
        e8a:
                sw a4, 12(a1)
                sw t5, 4(a1)
                sw t6, 8(a1)
                j voltaA
        e4a:
                bge a4, t6, e9a
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                j voltaA
        e9a:
                bge t3, t6, e17a
                sw t3, 4(a1)
                sw a4, 12(a1)
                sw t5, 0(a1)
                sw t6, 8(a1)
                j voltaA
        e17a:
                sw t3, 8(a1)
                sw a4, 12(a1)
                sw t5, 0(a1)
                sw t6, 4(a1)
                j voltaA
        e2a:
                bge t3, t5, e5a
                bge a4, t6, e10a
                sw t5, 12(a1)
                sw t6, 8(a1)
                j voltaA
        e10a:
                bge a4, t5, e18a
                bge t3, t6, e20a
                sw a4, 8(a1)
                sw t5, 12(a1)
                sw t6, 4(a1)
                j voltaA
        e20a:
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 12(a1)
                sw t6, 0(a1)
                j voltaA
        e18a:
                bge t3, t6, e21a
                sw a4, 12(a1)
                sw t6, 4(a1)
                j voltaA
        e21a:
                sw t3, 4(a1)
                sw a4, 12(a1)
                sw t6, 0(a1)
                j voltaA
        e5a:
                sw t3, 8(a1)
                sw a4, 12(a1)
                sw t5, 4(a1)
                sw t6, 0(a1)
                j voltaA
        e1a:
                bge t5, t6, e3a
                bge t3, t5, e6a
                sw t3, 4(a1)
                sw a4, 0(a1)
                j voltaA
        e6a:
                bge a4, t6, e11a
                bge a4, t5, e19a
                bge t3, t6, e22a
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                j voltaA
        e22a:
                sw t3, 12(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                sw t6, 8(a1)
                j voltaA
        e19a:
                bge t3, t6, e23a
                sw t3, 8(a1)
                sw t5, 0(a1)
                j voltaA
        e23a:
                sw t3, 12(a1)
                sw t5, 0(a1)
                sw t6, 8(a1)
                j voltaA
        e11a:
                sw t3, 12(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                sw t6, 4(a1)
                j voltaA
        e3a:
                bge t3, t5, e7a
                bge a4, t6, e12a
                bge t3, t6, e47a
                sw t3, 4(a1)
                sw a4, 0(a1)
                sw t5, 12(a1)
                sw t6, 8(a1)
                j voltaA
        e47a:
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 12(a1)
                sw t6, 4(a1)
                j voltaA
        e12a:
                sw t3, 8(a1)
                sw t5, 12(a1)
                sw t6, 0(a1)
                j voltaA
        e7a:
                bge a4, t6, e13a
                sw t3, 12(a1)
                sw a4, 0(a1)
                sw t6, 4(a1)
                j voltaA
        e13a:
                bge a4, t5, e16a
                sw t3, 12(a1)
                sw t6, 0(a1)
                j voltaA
        e16a:
                sw t3, 12(a1)
                sw a4, 8(a1)
                sw t5, 4(a1)
                sw t6, 0(a1)
                j voltaA
 
smallB:
        test2b:
                lw t3, 0(a1)
                lw a4, 0(a2)
                bgt a4, t3, voltaB
                sw t3, 0(a2)
                sw a4, 0(a1)
                j voltaB
        test3b:
                lw t3, 0(a1)
                lw a4, 4(a1)
                lw t5, 8(a1)

                bge t3, a4, d1b
                bge t3, t5, d2b
                bge a4, t5, d4b
                j voltaB
        d4b:
                sw a4, 8(a1)
                sw t5, 4(a1)
                j voltaB
        d2b:
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                j voltaB
        d1b:
                bge t3, t5, d3b
                sw t3, 4(a1)
                sw a4, 0(a1)
                j voltaB
        d3b:
                bge a4, t5, d5b
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                j voltaB
        d5b:
                sw t3, 8(a1)
                sw t5, 0(a1)
                j voltaB
        test4b:
                lw t3, 0(a1)
                lw a4, 4(a1)
                lw t5, 8(a1)
                lw t6, 12(a1)

                bge t3, a4, e1b
                bge t5, t6, e2b
                bge t3, t5, e4b
                bge a4, t6, e8b
                bge a4, t5, e14b
                j voltaB
        e14b:
                sw a4, 8(a1)
                sw t5, 4(a1)
                j voltaB
        e8b:
                sw a4, 12(a1)
                sw t5, 4(a1)
                sw t6, 8(a1)
                j voltaB
        e4b:
                bge a4, t6, e9b
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                j voltaB
        e9b:
                bge t3, t6, e17b
                sw t3, 4(a1)
                sw a4, 12(a1)
                sw t5, 0(a1)
                sw t6, 8(a1)
                j voltaB
        e17b:
                sw t3, 8(a1)
                sw a4, 12(a1)
                sw t5, 0(a1)
                sw t6, 4(a1)
                j voltaB
        e2b:
                bge t3, t5, e5b
                bge a4, t6, e10b
                sw t5, 12(a1)
                sw t6, 8(a1)
                j voltaB
        e10b:
                bge a4, t5, e18b
                bge t3, t6, e20b
                sw a4, 8(a1)
                sw t5, 12(a1)
                sw t6, 4(a1)
                j voltaB
        e20b:
                sw t3, 4(a1)
                sw a4, 8(a1)
                sw t5, 12(a1)
                sw t6, 0(a1)
                j voltaB
        e18b:
                bge t3, t6, e21b
                sw a4, 12(a1)
                sw t6, 4(a1)
                j voltaB
        e21b:
                sw t3, 4(a1)
                sw a4, 12(a1)
                sw t6, 0(a1)
                j voltaB
        e5b:
                sw t3, 8(a1)
                sw a4, 12(a1)
                sw t5, 4(a1)
                sw t6, 0(a1)
                j voltaB
        e1b:
                bge t5, t6, e3b
                bge t3, t5, e6b
                sw t3, 4(a1)
                sw a4, 0(a1)
                j voltaB
        e6b:
                bge a4, t6, e11b
                bge a4, t5, e19b
                bge t3, t6, e22b
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                j voltaB
        e22b:
                sw t3, 12(a1)
                sw a4, 0(a1)
                sw t5, 4(a1)
                sw t6, 8(a1)
                j voltaB
        e19b:
                bge t3, t6, e23b
                sw t3, 8(a1)
                sw t5, 0(a1)
                j voltaB
        e23b:
                sw t3, 12(a1)
                sw t5, 0(a1)
                sw t6, 8(a1)
                j voltaB
        e11b:
                sw t3, 12(a1)
                sw a4, 8(a1)
                sw t5, 0(a1)
                sw t6, 4(a1)
                j voltaB
        e3b:
                bge t3, t5, e7b
                bge a4, t6, e12b
                bge t3, t6, e47b
                sw t3, 4(a1)
                sw a4, 0(a1)
                sw t5, 12(a1)
                sw t6, 8(a1)
                j voltaB
        e47b:
                sw t3, 8(a1)
                sw a4, 0(a1)
                sw t5, 12(a1)
                sw t6, 4(a1)
                j voltaB
        e12b:
                sw t3, 8(a1)
                sw t5, 12(a1)
                sw t6, 0(a1)
                j voltaB
        e7b:
                bge a4, t6, e13b
                sw t3, 12(a1)
                sw a4, 0(a1)
                sw t6, 4(a1)
                j voltaB
        e13b:
                bge a4, t5, e16b
                sw t3, 12(a1)
                sw t6, 0(a1)
                j voltaB
        e16b:
                sw t3, 12(a1)
                sw a4, 8(a1)
                sw t5, 4(a1)
                sw t6, 0(a1)
                j voltaB
 
endpartition:
        ## a1 endereço do primeiro elemento
        ## a2 endereço j

        ## mantem a1 como low

        sw a2, 8(sp) ## salva o pivo original

        bge a1, a2, a ## precipitação do teste da prox sort

        sub t3, a2, a1
        
        beq t3, a0, test2a
        beq t3, a3, test3a
        beq t3, a5, test4a

        call notfirst ## low = low, high = pivo
        a:
        voltaA:

        lw a2, 4(sp) ## recupera o high original
        lw a1, 8(sp) ## recupera o endereço do pivo original

        addi a1, a1, 4 ## soma 4 ao endereço do pivo

        bge a1, a2, b ## precipitação do teste da prox sort

        sub t3, a2, a1
        
        beq t3, a0, test2b
        beq t3, a3, test3b
        beq t3, a5, test4b

        call notfirst ## low = pivo + 4, high = high
        b:
        voltaB:
        

        lw ra, 0(sp)
        addi sp, sp, 12

end:
        ret

sort:
        ## beq a0, zero, notfirst ## pula se a0 é igual à zero
        ## ble a0, zero, notfirst ## pula se a0 é menor ou igual à zero

        slli a1, a1, 2 ## índice do primeiro * 4
        slli a2, a2, 2 ## índice do último * 4

        add a1, a1, a0 ## somado ao início da lista, endereço do primeiro elemento
        add a2, a2, a0 ## somado ao início da lista, endereço do último elemento

        #bge a1, a2, end

        ## mv a0, zero ## define a0 para zero, opcional
        li a0, 4 ## define a0 para 4, usado na comparação de 2 elem
        li a3, 8 ## define a0 para 8, usado na comparação de 3 elem
        li a5, 12 ## define a0 para 12, usado na comparação de 4 elem

notfirst:
        ## a1 endereço do primeiro elemento
        ## a2 endereço do último elemento
               
notsmall:
        ## addi a0, a0, -1

        addi sp, sp, -12
        sw ra, 0(sp)    
        sw a2, 4(sp) ## salva o high original    

        add t3, a1, a2 ## low + high
        srli t3, t3, 3 ## divide por 8
        slli t3, t3, 2 ## multiplica por 4
        lw t3, 0(t3) ## carrega o pivo em t3, elemento do meio
        #lw t3, 0(a1) ## carrega o pivo em t3, primeiro elemento

        mv a4, a1
        #addi a4, a1, -4 ## i = low - 4
        #addi a2, a2, 4 ## j = high + 4

        ## a1 endereço do primeiro elemento
        ## a2 endereço j
        ## a4 endereço i

        ## t3 elemento pivo
insane:
        low_:
                lw t6, 0(a4)
                bge t6, t3, highL0_
        low__:
                lw t6, 4(a4)
                bge t6, t3, highL1_
                lw t6, 8(a4)
                bge t6, t3, highL2_
                lw t6, 12(a4)
                bge t6, t3, highL3_
                lw t6, 16(a4)
                bge t6, t3, highL4_
                lw t6, 20(a4)
                bge t6, t3, highL5_
                lw t6, 24(a4)
                bge t6, t3, highL6_
                lw t6, 28(a4)
                bge t6, t3, highL7_
                addi a4, a4, 28
                j low__
        highL0_:
                lw t4, 0(a2)
                ble t4, t3, swapL0H0
        highL0:
                lw t4, -4(a2)
                ble t4, t3, swapL0H1
                lw t4, -8(a2)
                ble t4, t3, swapL0H2
                lw t4, -12(a2)
                ble t4, t3, swapL0H3
                lw t4, -16(a2)
                ble t4, t3, swapL0H4
                lw t4, -20(a2)
                ble t4, t3, swapL0H5
                lw t4, -24(a2)
                ble t4, t3, swapL0H6
                lw t4, -28(a2)
                ble t4, t3, swapL0H7
                lw t4, -32(a2)
                ble t4, t3, swapL0H8
                addi a2, a2, -32
                j highL0
        highL1_:
                lw t4, 0(a2)
                ble t4, t3, swapL1H0
        highL1:
                lw t4, -4(a2)
                ble t4, t3, swapL1H1
                lw t4, -8(a2)
                ble t4, t3, swapL1H2
                lw t4, -12(a2)
                ble t4, t3, swapL1H3
                lw t4, -16(a2)
                ble t4, t3, swapL1H4
                lw t4, -20(a2)
                ble t4, t3, swapL1H5
                lw t4, -24(a2)
                ble t4, t3, swapL1H6
                lw t4, -28(a2)
                ble t4, t3, swapL1H7
                lw t4, -32(a2)
                ble t4, t3, swapL1H8
                addi a2, a2, -32
                j highL1
        highL2_:
                lw t4, 0(a2)
                ble t4, t3, swapL2H0
        highL2:
                lw t4, -4(a2)
                ble t4, t3, swapL2H1
                lw t4, -8(a2)
                ble t4, t3, swapL2H2
                lw t4, -12(a2)
                ble t4, t3, swapL2H3
                lw t4, -16(a2)
                ble t4, t3, swapL2H4
                lw t4, -20(a2)
                ble t4, t3, swapL2H5
                lw t4, -24(a2)
                ble t4, t3, swapL2H6
                lw t4, -28(a2)
                ble t4, t3, swapL2H7
                lw t4, -32(a2)
                ble t4, t3, swapL2H8
                addi a2, a2, -32
                j highL2
        highL3_:
                lw t4, 0(a2)
                ble t4, t3, swapL3H0
        highL3:
                lw t4, -4(a2)
                ble t4, t3, swapL3H1
                lw t4, -8(a2)
                ble t4, t3, swapL3H2
                lw t4, -12(a2)
                ble t4, t3, swapL3H3
                lw t4, -16(a2)
                ble t4, t3, swapL3H4
                lw t4, -20(a2)
                ble t4, t3, swapL3H5
                lw t4, -24(a2)
                ble t4, t3, swapL3H6
                lw t4, -28(a2)
                ble t4, t3, swapL3H7
                lw t4, -32(a2)
                ble t4, t3, swapL3H8
                addi a2, a2, -32
                j highL3
        highL4_:
                lw t4, 0(a2)
                ble t4, t3, swapL4H0
        highL4:
                lw t4, -4(a2)
                ble t4, t3, swapL4H1
                lw t4, -8(a2)
                ble t4, t3, swapL4H2
                lw t4, -12(a2)
                ble t4, t3, swapL4H3
                lw t4, -16(a2)
                ble t4, t3, swapL4H4
                lw t4, -20(a2)
                ble t4, t3, swapL4H5
                lw t4, -24(a2)
                ble t4, t3, swapL4H6
                lw t4, -28(a2)
                ble t4, t3, swapL4H7
                lw t4, -32(a2)
                ble t4, t3, swapL4H8
                addi a2, a2, -32
                j highL4
        highL5_:
                lw t4, 0(a2)
                ble t4, t3, swapL5H0
        highL5:
                lw t4, -4(a2)
                ble t4, t3, swapL5H1
                lw t4, -8(a2)
                ble t4, t3, swapL5H2
                lw t4, -12(a2)
                ble t4, t3, swapL5H3
                lw t4, -16(a2)
                ble t4, t3, swapL5H4
                lw t4, -20(a2)
                ble t4, t3, swapL5H5
                lw t4, -24(a2)
                ble t4, t3, swapL5H6
                lw t4, -28(a2)
                ble t4, t3, swapL5H7
                lw t4, -32(a2)
                ble t4, t3, swapL5H8
                addi a2, a2, -32
                j highL5
        highL6_:
                lw t4, 0(a2)
                ble t4, t3, swapL6H0
        highL6:
                lw t4, -4(a2)
                ble t4, t3, swapL6H1
                lw t4, -8(a2)
                ble t4, t3, swapL6H2
                lw t4, -12(a2)
                ble t4, t3, swapL6H3
                lw t4, -16(a2)
                ble t4, t3, swapL6H4
                lw t4, -20(a2)
                ble t4, t3, swapL6H5
                lw t4, -24(a2)
                ble t4, t3, swapL6H6
                lw t4, -28(a2)
                ble t4, t3, swapL6H7
                lw t4, -32(a2)
                ble t4, t3, swapL6H8
                addi a2, a2, -32
                j highL6
        highL7_:
                lw t4, 0(a2)
                ble t4, t3, swapL7H0
        highL7:
                lw t4, -4(a2)
                ble t4, t3, swapL7H1
                lw t4, -8(a2)
                ble t4, t3, swapL7H2
                lw t4, -12(a2)
                ble t4, t3, swapL7H3
                lw t4, -16(a2)
                ble t4, t3, swapL7H4
                lw t4, -20(a2)
                ble t4, t3, swapL7H5
                lw t4, -24(a2)
                ble t4, t3, swapL7H6
                lw t4, -28(a2)
                ble t4, t3, swapL7H7
                lw t4, -32(a2)
                ble t4, t3, swapL7H8
                addi a2, a2, -32
                j highL7
        swapL0H0:
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H0:
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H1:
                add a2, a2, -4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H0:
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H1:
                add a2, a2, -4
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

        low:
                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H2:
                add a2, a2, -8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H0:
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H1:
                add a2, a2, -4
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H2:
                add a2, a2, -8
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H3:
                add a2, a2, -12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H0:
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H1:
                add a2, a2, -4
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H2:
                add a2, a2, -8
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H3:
                add a2, a2, -12
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H4:
                add a2, a2, -16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H0:
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H1:
                add a2, a2, -4
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H2:
                add a2, a2, -8
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H3:
                add a2, a2, -12
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H4:
                add a2, a2, -16
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H5:
                add a2, a2, -20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H0:
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H1:
                add a2, a2, -4
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H2:
                add a2, a2, -8
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H3:
                add a2, a2, -12
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H4:
                add a2, a2, -16
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H5:
                add a2, a2, -20
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H6:
                add a2, a2, -24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H0:
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H1:
                add a2, a2, -4
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H2:
                add a2, a2, -8
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H3:
                add a2, a2, -12
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H4:
                add a2, a2, -16
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H5:
                add a2, a2, -20
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H6:
                add a2, a2, -24
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H7:
                add a2, a2, -28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H1:
                add a2, a2, -4
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H2:
                add a2, a2, -8
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H3:
                add a2, a2, -12
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H4:
                add a2, a2, -16
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H5:
                add a2, a2, -20
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H6:
                add a2, a2, -24
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H7:
                add a2, a2, -28
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL0H8:
                add a2, a2, -32
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H2:
                add a2, a2, -8
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H3:
                add a2, a2, -12
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H4:
                add a2, a2, -16
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H5:
                add a2, a2, -20
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H6:
                add a2, a2, -24
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H7:
                add a2, a2, -28
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL1H8:
                add a2, a2, -32
                add a4, a4, 4
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H3:
                add a2, a2, -12
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H4:
                add a2, a2, -16
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H5:
                add a2, a2, -20
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H6:
                add a2, a2, -24
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H7:
                add a2, a2, -28
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL2H8:
                add a2, a2, -32
                add a4, a4, 8
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H4:
                add a2, a2, -16
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H5:
                add a2, a2, -20
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H6:
                add a2, a2, -24
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H7:
                add a2, a2, -28
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL3H8:
                add a2, a2, -32
                add a4, a4, 12
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H5:
                add a2, a2, -20
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H6:
                add a2, a2, -24
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H7:
                add a2, a2, -28
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL4H8:
                add a2, a2, -32
                add a4, a4, 16
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H6:
                add a2, a2, -24
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H7:
                add a2, a2, -28
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL5H8:
                add a2, a2, -32
                add a4, a4, 20
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H7:
                add a2, a2, -28
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL6H8:
                add a2, a2, -32
                add a4, a4, 24
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low
        swapL7H8:
                add a2, a2, -32
                add a4, a4, 28
                bge a4, a2, endpartition
                sw t6, 0(a2)
                sw t4, 0(a4)

                lw t6, 4(a4)
                bge t6, t3, highL1
                lw t6, 8(a4)
                bge t6, t3, highL2
                lw t6, 12(a4)
                bge t6, t3, highL3
                lw t6, 16(a4)
                bge t6, t3, highL4
                lw t6, 20(a4)
                bge t6, t3, highL5
                lw t6, 24(a4)
                bge t6, t3, highL6
                lw t6, 28(a4)
                bge t6, t3, highL7
                addi a4, a4, 28
                j low

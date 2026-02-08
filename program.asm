.data
        v: .word 4, 4, 4, 5, 4, 4, 4
        n: .word 7
        x: .word 4
.text
        la $t0, v               #vettore
        lw $t1, n               #num elem vettore
        lw $a1, x               #num da cerc
        li $t2, 1               #risultato

        while: 
                beq $t1, $zero, exit           
                lw $t3, 0($t0)
                addi $t0, $t0, 4
                addi $t1, $t1, -1               
                bne $t3, $a1, cambia           
                j while
        exit:   
                li $v0, 1
                move $a0, $t2
                syscall
                #End of program
                li $v0, 10
                syscall
	cambia:
        	li $t2, 0
        	j while

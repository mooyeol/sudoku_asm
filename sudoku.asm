section .data
    line1 db "+-------+-------+-------+", 10
    row1  db "| 5 3 . | . 7 . | . . . |", 10
    row2  db "| 6 . . | 1 9 5 | . . . |", 10
    row3  db "| . 9 8 | . . . | . 6 . |", 10
    line2 db "+-------+-------+-------+", 10
    row4  db "| 8 . . | . 6 . | . . 3 |", 10
    row5  db "| 4 . . | 8 . 3 | . . 1 |", 10
    row6  db "| 7 . . | . 2 . | . . 6 |", 10
    row7  db "| . 6 . | . . . | 2 8 . |", 10
    row8  db "| . . . | 4 1 9 | . . 5 |", 10
    row9  db "| . . . | . 8 . | . 7 9 |", 10

section .text
    global _start

_start:
    ; 출력 순서
    call print_line1
    call print_row1
    call print_row2
    call print_row3
    call print_line2
    call print_row4
    call print_row5
    call print_row6
    call print_line2
    call print_row7
    call print_row8
    call print_row9
    call print_line2

    ; 종료
    mov rax, 60      ; syscall: exit
    xor rdi, rdi     ; status = 0
    syscall

; ---------- 출력 함수들 ----------
print_line1: mov rsi, line1
             mov rdx, 26        ; ← 줄바꿈 포함
             jmp print
print_line2: mov rsi, line2
             mov rdx, 26        ; ← 줄바꿈 포함
             jmp print
print_row1:  mov rsi, row1
             mov rdx, 26
             jmp print
print_row2:  mov rsi, row2
             mov rdx, 26
             jmp print
print_row3:  mov rsi, row3
             mov rdx, 26
             jmp print
print_row4:  mov rsi, row4
             mov rdx, 26
             jmp print
print_row5:  mov rsi, row5
             mov rdx, 26
             jmp print
print_row6:  mov rsi, row6
             mov rdx, 26
             jmp print
print_row7:  mov rsi, row7
             mov rdx, 26
             jmp print
print_row8:  mov rsi, row8
             mov rdx, 26
             jmp print
print_row9:  mov rsi, row9
             mov rdx, 26
             jmp print

print:
    mov rax, 1       ; syscall: write
    mov rdi, 1       ; stdout
    syscall
    ret

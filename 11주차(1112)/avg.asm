
INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter five numbers: ", 0
    msg2 BYTE "Average = ", 0

    sum DWORD 0
    average DWORD 0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString

    ; 숫자 5개 입력받기
    mov ecx, 5
    mov sum, 0

INPUT_LOOP:
    call ReadInt
    add sum, eax
    loop INPUT_LOOP

    ; 평균 계산
    mov eax, sum
    mov ebx, 5
    cdq
    idiv ebx

    mov average, eax

    ; 평균 출력
    call Crlf
    mov edx, OFFSET msg2
    call WriteString

    mov eax, average
    call WriteInt

    call Crlf

    exit

main ENDP
END main


INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter first number: ", 0
    msg2 BYTE "Enter second number: ", 0

    msgAdd BYTE "Addition: ", 0
    msgSub BYTE "Subtraction: ", 0
    msgMul BYTE "Multiplication: ", 0
    msgDiv BYTE "Division: ", 0

    msgAX BYTE "AX = ", 0
    msgBX BYTE "BX = ", 0
    msgCX BYTE "CX = ", 0
    msgDX BYTE "DX = ", 0

    num1 SDWORD ?
    num2 SDWORD ?

    resultAdd SDWORD ?
    resultSub SDWORD ?
    resultMul SDWORD ?
    resultDiv SDWORD ?

    saveAX SDWORD ?
    saveBX SDWORD ?
    saveCX SDWORD ?
    saveDX SDWORD ?

.code
main PROC

    ; 숫자 입력
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov num1, eax

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov num2, eax

    ; 덧셈
    mov eax, num1
    add eax, num2
    mov resultAdd, eax

    ; 뺄셈
    mov eax, num1
    sub eax, num2
    mov resultSub, eax

    ; 곱셈
    mov eax, num1
    imul num2
    mov resultMul, eax

    ; 나눗셈
    cmp num2, 0
    je DivisionError

    mov eax, num1
    cdq
    idiv num2
    mov resultDiv, eax

    ; 레지스터에 넣을 값 결정
    mov eax, num1
    mov saveAX, eax

    mov eax, num2
    mov saveBX, eax

    mov eax, resultAdd
    mov saveCX, eax

    mov eax, resultSub
    mov saveDX, eax

    ; 사칙연산 결과 출력
    mov edx, OFFSET msgAdd
    call WriteString
    mov eax, resultAdd
    call WriteInt
    call Crlf

    mov edx, OFFSET msgSub
    call WriteString
    mov eax, resultSub
    call WriteInt
    call Crlf

    mov edx, OFFSET msgMul
    call WriteString
    mov eax, resultMul
    call WriteInt
    call Crlf

    mov edx, OFFSET msgDiv
    call WriteString
    mov eax, resultDiv
    call WriteInt
    call Crlf

    ; AX 출력
    mov edx, OFFSET msgAX
    call WriteString
    mov eax, saveAX
    call WriteInt
    call Crlf

    ; BX 출력
    mov edx, OFFSET msgBX
    call WriteString
    mov eax, saveBX
    call WriteInt
    call Crlf

    ; CX 출력
    mov edx, OFFSET msgCX
    call WriteString
    mov eax, saveCX
    call WriteInt
    call Crlf

    ; DX 출력
    mov edx, OFFSET msgDX
    call WriteString
    mov eax, saveDX
    call WriteInt
    call Crlf

    exit

DivisionError:
    mov edx, OFFSET msgDiv
    call WriteString
    mov edx, OFFSET msg2
    call WriteString
    exit

main ENDP
END main

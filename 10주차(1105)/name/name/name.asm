.386
.model flat, stdcall
option casemap:none

includelib kernel32.lib

ExitProcess PROTO, dwExitCode:DWORD
GetStdHandle PROTO, nStdHandle:DWORD
WriteConsoleA PROTO, hConsoleOutput:DWORD, lpBuffer:PTR BYTE, nNumberOfCharsToWrite:DWORD, lpNumberOfCharsWritten:PTR DWORD, lpReserved:DWORD

.DATA
    msg BYTE "Student ID: 2021963020", 13, 10
        BYTE "Name: KIM JAEHONG", 13, 10
    msgLen EQU ($ - msg)
    written DWORD ?

.CODE
main:
    invoke GetStdHandle, -11
    invoke WriteConsoleA, eax, ADDR msg, msgLen, ADDR written, 0
    invoke ExitProcess, 0

END main
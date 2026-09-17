| 레지스터   | 이름          | 전통적인 주요 용도             |
| ------ | ----------- | ---------------------- |
| **AX** | Accumulator | 산술/논리 연산, 함수 반환값 등     |
| **BX** | Base        | 주소 계산의 기준값             |
| **CX** | Counter     | 반복문, shift/rotate 횟수 등 |
| **DX** | Data        | 산술 연산의 보조 데이터, I/O 등   |


<img width="1062" height="478" alt="img1 daumcdn" src="https://github.com/user-attachments/assets/a5c89193-5f2f-4254-bbd0-4ad033493526" />

move eax, 5 = 5를 eax로 이동시켜라

add eax, 6 = eax에 6을 더한다

INVOKE ExitProcess, 0 = C에서의 return 0;

<img width="1057" height="596" alt="img1 daumcdn" src="https://github.com/user-attachments/assets/8993a6f6-5251-4b5c-83ab-f0fd1c9d3c91" />

.data 밑에 변수 선언(Data segment)

|        | Instruction                | Directive                    |
| ------ | -------------------------- | ---------------------------- |
| 대상     | **CPU**                    | **Assembler**                |
| 실행 여부  | CPU가 실행                    | CPU가 실행하지 않음                 |
| 목적     | 연산/데이터 이동/분기 등             | 데이터·메모리·코드 구성                |
| 기계어 변환 | CPU가 실행할 코드로 변환            | 일반적으로 직접 실행 명령으로 변환되지 않음     |
| 예      | `MOV`, `ADD`, `SUB`, `JMP` | `section`, `db`, `dw`, `equ` |

Instruction = CPU에게 하는 명령

Directive = Assembler에게 하는 지시

<img width="624" height="352" alt="image" src="https://github.com/user-attachments/assets/872a07ec-0051-4a7b-9d19-8b899e834b81" />

2's complement(2의 보수)

bias

\0 = NULL character = ASCII 값 0

imul eax, ebx, 5; // ebx와 5를 곱하여 eax에 값을 저장

<img width="606" height="338" alt="image" src="https://github.com/user-attachments/assets/1caf7a1f-2c22-40a9-86cf-ded910eec25a" />

<img width="621" height="357" alt="image" src="https://github.com/user-attachments/assets/c02f4aee-8881-4397-83c3-686bd6bb1822" />


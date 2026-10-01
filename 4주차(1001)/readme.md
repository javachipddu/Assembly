# 어셈블리프로그래밍 4주차 수업(1001)

강의자료2 산술 명령과 플래그 참고할 것

암기할 것(연습문제 등)

## Operand Types

<img width="593" height="292" alt="image" src="https://github.com/user-attachments/assets/e72a172d-6c42-4c34-bfb3-c931898f45c2" />

operate: 연산자

operand: 연산의 대상이 되는 것(메모리에 있음)

변수를 만들기 위해서 꼭 필요한 것: 데이터 타입(자료형/예:int i)

<img width="611" height="341" alt="image" src="https://github.com/user-attachments/assets/5d656786-ba4e-4021-80ac-7b9910cd12ee" />

mem: memory

<img width="600" height="351" alt="image" src="https://github.com/user-attachments/assets/9dd3bbec-45b9-4095-bd22-19e42188b5c7" />

var1 값이 al로 mov한다

<img width="600" height="339" alt="image" src="https://github.com/user-attachments/assets/15fb4470-2d32-411d-8bae-fc4db0467c74" />

메모리 -> cpu 

왼쪽에는 메모리나 레지스터밖에 올 수 없다.

<img width="609" height="341" alt="image" src="https://github.com/user-attachments/assets/00836554-4954-4c3b-bb70-f132bbc58158" />

bit < nibble < byte < word < field < record < DB

어셈블리 언어에서 WORD 바이트는 2바이트(16비트)

<img width="606" height="363" alt="image" src="https://github.com/user-attachments/assets/2796302a-46f4-44ca-96e3-2a7e6686104f" />

78h        → 8비트

1234h      → 16비트

12345678h  → 32비트

EAX → 32비트

AX → 16비트

AH → 상위 8비트

AL → 하위 8비트

부호 확장: 비트 값을 늘릴 때 앞 비트의 부호를 그대로 쓴다.

<img width="621" height="346" alt="image" src="https://github.com/user-attachments/assets/4e505de7-ac9a-45a4-b06f-24e41b63d9fb" />

* 변수명 고려하기

<img width="626" height="713" alt="image" src="https://github.com/user-attachments/assets/e30615b9-649e-4ed3-94c3-07258093f5d4" />

<img width="593" height="291" alt="image" src="https://github.com/user-attachments/assets/fd0c5d2f-a495-40e4-8b8e-933889f8bb6a" />

* SAR → Arithmetic Right Shift → >>

* SHR → Logical Right Shift → >>>

<img width="619" height="347" alt="image" src="https://github.com/user-attachments/assets/e5f28b91-3ab0-440d-b9ca-1b50ee90dd7a" />

LAHF = Load status flags into AH / Load 적재

SAHF = Store AH into status flags / Store 저장

<img width="619" height="351" alt="image" src="https://github.com/user-attachments/assets/633ae741-f0d6-4309-97de-bdfcc6012e21" />

<img width="621" height="349" alt="image" src="https://github.com/user-attachments/assets/f942653d-71f9-4439-82d0-087e41fea215" />

대괄호가 없으면 arrayB+1에서 1만 al로 mov된다

<img width="614" height="344" alt="image" src="https://github.com/user-attachments/assets/473bf0e1-31e3-40ad-934b-b2ecb2e513a7" />

이거 실행해보기

<img width="604" height="344" alt="image" src="https://github.com/user-attachments/assets/44da7da4-1e8a-4e41-9af0-5001b83927db" />

increase, decrease

<img width="619" height="345" alt="image" src="https://github.com/user-attachments/assets/2cd1964b-5bfc-4c84-9110-92125d97aa83" />



<img width="600" height="341" alt="image" src="https://github.com/user-attachments/assets/7ab706a9-e3b9-4d96-aa26-b7c301811aeb" />

2의 보수

주요 플래그 레지스터

- CF	Carry Flag	자리올림/빌림 발생
- ZF	Zero Flag	결과가 0
- SF	Sign Flag	결과가 음수
- OF	Overflow Flag	부호 있는 수의 오버플로

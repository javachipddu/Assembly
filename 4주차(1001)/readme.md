# 어셈블리프로그래밍 4주차 수업(1001)

강의자료2 **산술 명령과 플래그** 참고할 것

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

2의 보수 만드는 거

주요 플래그 레지스터

- CF	Carry Flag	자리올림/빌림 발생
- ZF	Zero Flag	결과가 0
- SF	Sign Flag	결과가 음수
- OF	Overflow Flag	부호 있는 수의 오버플로

<img width="608" height="338" alt="image" src="https://github.com/user-attachments/assets/bcbf9169-a516-4a40-a553-fb71761e88a2" />

연산자 우선순위표 암기할 것

<img width="617" height="338" alt="image" src="https://github.com/user-attachments/assets/c49dbb06-e631-4d5e-91c7-ff0cd5679403" />

<img width="609" height="345" alt="image" src="https://github.com/user-attachments/assets/df23f836-58b7-411c-819b-b4ae4818d0be" />

<img width="624" height="712" alt="image" src="https://github.com/user-attachments/assets/3591beaf-b8ba-4921-82fb-dd14ef27eb6e" />

<img width="613" height="342" alt="image" src="https://github.com/user-attachments/assets/9aa4b96c-dbbe-4921-8f3c-5e25f1a5ab38" />

<img width="620" height="350" alt="image" src="https://github.com/user-attachments/assets/32a94c1e-3918-47dc-bd92-61cb9bcd7aa6" />

**Overflow(오버플로)**는 계산 결과가 표현할 수 있는 최대 범위를 넘어가는 것

**Underflow(언더플로)**는 반대로 계산 결과가 표현할 수 있는 최소 범위보다 작아지는 것

<img width="604" height="347" alt="image" src="https://github.com/user-attachments/assets/12450e6f-33f0-41a6-9a5d-8b1f82c54d5e" />

~: NOT / 1의 보수 구하는 비트 연산자
&: AND
^: XOR
|: OR

<img width="599" height="200" alt="image" src="https://github.com/user-attachments/assets/ba92e475-f147-4adf-bc6b-d7cec6e36af7" />

<img width="610" height="576" alt="image" src="https://github.com/user-attachments/assets/7ef50d07-3e57-4dd6-b437-3712524ac381" />

<img width="602" height="344" alt="image" src="https://github.com/user-attachments/assets/bee38843-5360-483d-b8f4-97205d61b518" />

<img width="613" height="710" alt="image" src="https://github.com/user-attachments/assets/f8d5fff1-abff-47f8-a583-0e52b274818c" />

<img width="619" height="339" alt="image" src="https://github.com/user-attachments/assets/b1c25255-7b32-42fd-8b84-e2c2bb44cb71" />

정렬

ALIGN으로 정렬시키는 이유?

<img width="608" height="341" alt="image" src="https://github.com/user-attachments/assets/b490ab18-7322-4b0b-b930-f9a9cce4cf88" />

<img width="608" height="234" alt="image" src="https://github.com/user-attachments/assets/80c05300-c696-48c5-bc4e-388cd84f923e" />

<img width="602" height="250" alt="image" src="https://github.com/user-attachments/assets/67741f8d-9a60-4ea8-9771-087e2cd12f38" />

<img width="611" height="340" alt="image" src="https://github.com/user-attachments/assets/7777bdf2-89a3-49cd-9c45-1ad5d62adf32" />

<img width="600" height="342" alt="image" src="https://github.com/user-attachments/assets/45d316bf-932d-4ad6-84f2-e6f7b18ca9b2" />

<img width="541" height="283" alt="image" src="https://github.com/user-attachments/assets/ce00348d-9ac8-4b81-a143-01c7283313ee" />

<img width="609" height="342" alt="image" src="https://github.com/user-attachments/assets/deaa8fce-25ae-418e-ad16-b8ef84585dad" />

<img width="608" height="342" alt="image" src="https://github.com/user-attachments/assets/a4874b84-33fa-4efc-851d-1986843e11f9" />

<img width="604" height="333" alt="image" src="https://github.com/user-attachments/assets/9c010e23-9d95-4e61-8067-0ca61307ffa1" />

loop은 cx레지스터를 사용한다.

4장 끝


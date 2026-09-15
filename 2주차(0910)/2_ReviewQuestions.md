# ReviewQuestions

1. EBP (Extended Base Pointer)
2.

CF — Carry Flag (자리올림 플래그)

ZF — Zero Flag (0 플래그)

SF — Sign Flag (부호 플래그)

OF — Overflow Flag (오버플로 플래그)

3. CF (Carry Flag)
4. OF (Overflow Flag)
5. 참

x86-64에서는 REX prefix를 사용하여 기존 x86 레지스터 집합을 확장할 수 있다.

R8   → 64-bit
R8D  → 32-bit
R8W  → 16-bit
R8B  → 8-bit

따라서 32비트 레지스터인 R8D를 사용할 수 있다.

6. SF (Sign Flag)
7. FPU (Floating-Point Unit)
8. 8개
9. 참

x86-64는 기존 x86 코드를 상당 부분 실행할 수 있도록 설계되었다.

기존 x86 프로그램과의 호환성을 유지하면서 64비트 기능을 추가했다.

10. 거짓

CPU가 64비트라고 해서 실제 주소가 항상 64비트 전체를 사용하는 것은 아니다.

실제 x86-64 구현에서는 주소 공간의 일부 비트만 사용하는 경우가 많다.

11. 참

Intel의 Itanium(IA-64)은 x86-64의 단순한 확장판이 아니다.

서로 다른 명령어 집합 구조를 가진다.

12. 거짓

SRAM → 빠르지만 비쌈
DRAM → 상대적으로 느리지만 저렴함

13. 참

RDI는 x86-64의 64비트 범용 레지스터 중 하나이다.

REX prefix를 사용하는 64비트 모드에서 사용할 수 있다.

14. 거짓

64비트 long mode에서는 일반적인 의미의 real mode로 전환할 수 없다.

또한 virtual-8086 mode도 지원되지 않는다.

15. 거짓

기본적인 x86은 8개의 범용 레지스터를 사용한다.

x86-64에서는 범용 레지스터가 16개로 확장되었다.

그래서 4개가 아니라 8개 더 많다.

16. 참
17. 거짓 / DRAM 설명이 아니라 EPROM에 대한 설명이다.
18. 참
19. 거짓 / 컴퓨터의 bus는 CPU, 메모리, I/O 장치 등이 데이터를 주고받는 통신 경로이다.
20. 거짓 / DRAM처럼 refresh가 필요한 것은 아니지만, 전원 자체는 필요하다.
21. 참
22. 참 / 8259A = Programmable Interrupt Controller (PIC)
23. 거짓 / PCI의 정확한 의미는 Peripheral Component Interconnect이다.
24. 거짓 / VRAM의 의미는 Video Random Access Memory이다.
25. Level 0 ~ Level 3, 모두 가능하다.
26. 더 빠른 처리와 낮은 지연 시간(latency)을 얻고, 사운드 카드의 특정 기능을 직접 활용하기 위해서이다.

# 어셈블리프로그래밍 10주차 수업(1105)

스택 관련 레지스터 : BP, SP

<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/353ef0a3-3b20-49db-8ea6-18dff4887e36" />
proc를실행하기전에는레지스터에있는내용을전부스택에갖다놓는다

<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/c4d04023-b493-49d4-aba5-ce3cb09767f7" />

<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/f7cf6cd2-7793-47a8-98f5-696a0cb8fcfc" />

callbyValue : 값 전달
```
int abc(int a, int b)

abcc(1,2) a=1, b=2
```
callbyReference : 주소 전달
```c
int abc(int *a, int *b)

abcc(&x,&y) a=1, b=2
```

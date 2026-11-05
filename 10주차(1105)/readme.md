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
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/590b9bdf-fc3f-4606-9193-078a712dd905" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/fd8a2b59-a8e0-464c-8071-52186661c295" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/224108ab-0718-4a38-97bd-3b08f3b8b257" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/1df1fb7d-3954-47e8-8e02-23b800b02b37" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/0348b0c7-866b-4582-bfa7-6d26b0ae2818" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/86b51772-72cb-469a-ae45-c8297306295f" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/75fb7922-3726-432a-bf46-8da662ac4df7" />

[] 안은 주소, **대괄호 [ ]는 메모리에 저장된 값에 접근한다는 의미**

<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/1b44020c-6b4e-453b-ac28-a8d817b6eb92" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/d5f37cda-1afe-4976-80d6-f5f809fde8b9" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/48201907-9279-49e3-8531-ec17f4cf85fb" />

## 꼬리 재귀(Tail Recursion)

꼬리 재귀란 함수가 자기 자신을 호출하고, 그 재귀 호출이 함수의 마지막 작업이 되는 재귀 방식이다.

즉, 재귀 호출이 끝난 뒤에 추가로 수행할 연산이 없는 형태이다.

### 1. 일반 재귀와 꼬리 재귀의 차이

일반 재귀

c

```c
int factorial(int n) {
    if (n == 1)
        return 1;

    return n * factorial(n - 1);
}
```

여기서는 `factorial(n - 1)`이 반환된 후 `n`과 곱하는 작업이 남아 있다.

따라서 꼬리 재귀가 아니다.

꼬리 재귀

c

```c
int factorial(int n, int result) {
    if (n == 1)
        return result;

    return factorial(n - 1, n * result);
}
```

여기서는 재귀 호출이 마지막 작업이다.

재귀 호출 이후에 추가 연산이 없다.

호출 예시:

c

```c
factorial(4, 1)
factorial(3, 4)
factorial(2, 12)
factorial(1, 24)
```

최종 결과는 `24`이다.

### 2. 꼬리 재귀의 장점

- 스택 사용량 감소 가능: 컴파일러가 꼬리 호출 최적화(Tail Call Optimization)를 적용하면 재귀 호출마다 스택 프레임을 새로 만들지 않을 수 있다.
- 반복문처럼 실행 가능: 꼬리 재귀를 반복문으로 변환할 수 있다.
- 메모리 효율성: 최적화가 적용되면 재귀 깊이에 비례하는 스택 메모리 사용을 줄일 수 있다.

### 3. 일반 재귀와 꼬리 재귀 비교

| 구분 | 일반 재귀 | 꼬리 재귀 |
| --- | --- | --- |
| 재귀 호출 이후 작업 | 있음 | 없음 |
| 추가 연산 | 반환 후 수행 | 호출 전에 수행 |
| 꼬리 호출 최적화 | 불가능 | 가능 |
| 스택 메모리 | 일반적으로 증가 | 최적화 시 일정하게 유지 가능 |

### 4. 어셈블리 관점에서 이해하기

일반 재귀는 함수 호출 후 복귀했을 때 남은 연산을 수행해야 하므로 복귀 주소와 필요한 상태를 유지해야 한다.

반면 꼬리 재귀는 최적화가 적용되면 다음과 같이 동작할 수 있다.

- `call` 대신 `jmp`로 함수의 시작 부분으로 이동
- 새로운 스택 프레임 생성 생략
- 기존 매개변수와 지역 상태 갱신

즉, 꼬리 재귀는 최적화하면 반복문과 비슷한 방식으로 실행할 수 있다.

주의할 점은 꼬리 재귀라고 해서 무조건 스택 메모리가 절약되는 것은 아니라는 것이다. 컴파일러가 꼬리 호출 최적화를 지원하고 실제로 적용해야 한다.

<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/80707822-6b01-4747-96b5-26bd35002fdf" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/943a047b-7e90-4efc-be69-327c0253ca8d" />
<img width="837" height="509" alt="image" src="https://github.com/user-attachments/assets/e4e7b513-803f-4510-9913-730a4f40e2e5" />

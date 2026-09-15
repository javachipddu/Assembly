# Short Answer

1. 왼쪽에서 가장 첫 번째 비트
2. a. 53 b. 150 c. 204
3. a. 110001010 b. 110010110 c. 100100001
4. 00000110
5. a. Word = 16 bits / b. Doubleword = 32 bits / c. Quadword = 64 bits / d. Double quadword = 128 bits
6. a. 12 bits / b. 16 bits / c. 16 bits
7. a. 35DA / b. CEA3 / c. FEDB
8. a. 0000 0001 0010 0110 1111 1001 1101 0100 / b. 0110 1010 1100 1101 1111 1010 1001 0101 / c. 1111 0110 1001 1011 1101 1100 0010 1010
9. a. 58 / b. 447 / c. 4097
10. a. 98 / b. 1203 / c. 671
11. a. FFE8h / b. FEB5h
12. a. FFEBh / b. FFD3h
13. a. 27641 / b. −16093
14. a. 19666 / b. −32208
15. a. −75 / b. 42 / c. −16
16. a. −128 / b. −52 / c. −73
17. a. 11111011 / b. 11010110 / c. 11110000
18. a. 10111000 / b. 10011110 / c. 11100110
19. a. AB2 / b. 1006
20. a. B82 / b. 1316
21. Hex = 42h, Decimal = 66
22. Hex = 47h, Decimal = 71
23.
$$
2^{129}-1
$$

680,564,733,841,876,926,926,749,214,863,536,422,911

24.
$$
2^{86-1}-1 = 2^{85}-1
$$

38,685,626,227,668,937,851

25.
| A | B | Output |
| - | - | ------ |
| 0 | 0 | **1**  |
| 0 | 1 | **0**  |
| 1 | 0 | **0**  |
| 1 | 1 | **0**  |

26.
| A | B | ¬A | ¬B | ¬A ∧ ¬B |
| - | - | -- | -- | ------- |
| 0 | 0 | 1  | 1  | **1**   |
| 0 | 1 | 1  | 0  | **0**   |
| 1 | 0 | 0  | 1  | **0**   |
| 1 | 1 | 0  | 0  | **0**   |

27. 16 rows

28. 2 selector bits

# Algoritm Workbench

# 1. 16-bit Binary String → Integer

### 풀이

이진수의 각 자리값은 오른쪽부터

```text
1, 2, 4, 8, 16, ...
```

이다.

문자 하나씩 확인하면서 현재 값에 2를 곱하고 현재 비트 값을 더하면 된다.

$$
result=result\times2+bit
$$

### C++ 코드

```cpp
#include <iostream>
#include <string>
using namespace std;

int binaryToInteger(string binary)
{
    int result = 0;

    for (int i = 0; i < binary.length(); i++)
    {
        result = result * 2 + (binary[i] - '0');
    }

    return result;
}

int main()
{
    string binary;

    cout << "Enter a 16-bit binary integer: ";
    cin >> binary;

    cout << "Integer value: " << binaryToInteger(binary) << endl;

    return 0;
}
```

---

# 2. 32-bit Hexadecimal String → Integer

### C++ 코드

```cpp
#include <iostream>
#include <string>
using namespace std;

unsigned long long hexToInteger(string hex)
{
    unsigned long long result = 0;

    for (int i = 0; i < hex.length(); i++)
    {
        int digit;

        if (hex[i] >= '0' && hex[i] <= '9')
            digit = hex[i] - '0';
        else if (hex[i] >= 'A' && hex[i] <= 'F')
            digit = hex[i] - 'A' + 10;
        else
            digit = hex[i] - 'a' + 10;

        result = result * 16 + digit;
    }

    return result;
}

int main()
{
    string hex;

    cout << "Enter a 32-bit hexadecimal integer: ";
    cin >> hex;

    cout << "Integer value: " << hexToInteger(hex) << endl;

    return 0;
}
```

---

# 3. Integer → Binary String

### 풀이

2로 계속 나누면서 나머지를 구한다.

나머지를 **거꾸로 읽으면**

```text
1101
```

### C++ 코드

```cpp
#include <iostream>
#include <string>
using namespace std;

string integerToBinary(unsigned int value)
{
    if (value == 0)
        return "0";

    string result = "";

    while (value > 0)
    {
        if (value % 2 == 0)
            result = "0" + result;
        else
            result = "1" + result;

        value = value / 2;
    }

    return result;
}

int main()
{
    unsigned int number;

    cout << "Enter an integer: ";
    cin >> number;

    cout << "Binary: " << integerToBinary(number) << endl;

    return 0;
}
```

---

# 4. Integer → Hexadecimal String

### 풀이

16으로 나누면서 나머지를 이용한다.

나머지가

```text
0~9 → 0~9
10 → A
11 → B
12 → C
13 → D
14 → E
15 → F
```

가 된다.

### C++ 코드

```cpp
#include <iostream>
#include <string>
using namespace std;

string integerToHex(unsigned int value)
{
    if (value == 0)
        return "0";

    string digits = "0123456789ABCDEF";
    string result = "";

    while (value > 0)
    {
        int remainder = value % 16;
        result = digits[remainder] + result;
        value = value / 16;
    }

    return result;
}

int main()
{
    unsigned int number;

    cout << "Enter an integer: ";
    cin >> number;

    cout << "Hexadecimal: " << integerToHex(number) << endl;

    return 0;
}
```

---

# 5. 두 digit 문자열의 덧셈

## 핵심 알고리즘

오른쪽에서부터 계산한다.

예:

```text
   999
 + 123
 -----
  1122
```

각 자리에서

$$
sum = digit1 + digit2 + carry
$$

그리고

$$
digit = sum \% base
$$

$$
carry = sum / base
$$

를 사용한다.

### C++ 코드

```cpp
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

string addBase(string a, string b, int base)
{
    int i = a.length() - 1;
    int j = b.length() - 1;

    int carry = 0;
    string result = "";

    while (i >= 0 || j >= 0 || carry > 0)
    {
        int digitA = 0;
        int digitB = 0;

        if (i >= 0)
            digitA = a[i] - '0';

        if (j >= 0)
            digitB = b[j] - '0';

        int sum = digitA + digitB + carry;

        result += char('0' + (sum % base));

        carry = sum / base;

        i--;
        j--;
    }

    reverse(result.begin(), result.end());

    return result;
}

int main()
{
    string a, b;
    int base;

    cout << "Enter base: ";
    cin >> base;

    cout << "Enter first number: ";
    cin >> a;

    cout << "Enter second number: ";
    cin >> b;

    cout << "Sum: " << addBase(a, b, base) << endl;

    return 0;
}
```

---

# 6. 두 hexadecimal 문자열의 덧셈

## 핵심

5번과 거의 동일하지만 digit이 `0~9, A~F`라는 차이가 있다.

먼저 hexadecimal digit을 숫자로 변환한다.

```text
A → 10
B → 11
C → 12
D → 13
E → 14
F → 15
```

그리고 계산 후 다시 hexadecimal 문자로 바꾼다.

### C++ 코드

```cpp
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int hexDigitToValue(char c)
{
    if (c >= '0' && c <= '9')
        return c - '0';

    if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;

    return c - 'a' + 10;
}

char valueToHexDigit(int value)
{
    if (value < 10)
        return '0' + value;

    return 'A' + (value - 10);
}

string addHex(string a, string b)
{
    int i = a.length() - 1;
    int j = b.length() - 1;

    int carry = 0;
    string result = "";

    while (i >= 0 || j >= 0 || carry > 0)
    {
        int digitA = 0;
        int digitB = 0;

        if (i >= 0)
            digitA = hexDigitToValue(a[i]);

        if (j >= 0)
            digitB = hexDigitToValue(b[j]);

        int sum = digitA + digitB + carry;

        result += valueToHexDigit(sum % 16);

        carry = sum / 16;

        i--;
        j--;
    }

    reverse(result.begin(), result.end());

    return result;
}

int main()
{
    string a, b;

    cout << "Enter first hexadecimal number: ";
    cin >> a;

    cout << "Enter second hexadecimal number: ";
    cin >> b;

    cout << "Sum: " << addHex(a, b) << endl;

    return 0;
}
```

---

# 7. Hexadecimal 한 자리 × hexadecimal 문자열

## 알고리즘

오른쪽부터 한 자리씩 계산한다.

$$
product=digit\times multiplier+carry
$$

그리고

$$
digit=product\%16
$$

$$
carry=product/16
$$

### C++ 코드

```cpp
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int hexDigitToValue(char c)
{
    if (c >= '0' && c <= '9')
        return c - '0';

    if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;

    return c - 'a' + 10;
}

char valueToHexDigit(int value)
{
    if (value < 10)
        return '0' + value;

    return 'A' + (value - 10);
}

string multiplyHex(char singleDigit, string number)
{
    int multiplier = hexDigitToValue(singleDigit);

    int carry = 0;
    string result = "";

    for (int i = number.length() - 1; i >= 0; i--)
    {
        int digit = hexDigitToValue(number[i]);

        int product = digit * multiplier + carry;

        result += valueToHexDigit(product % 16);

        carry = product / 16;
    }

    while (carry > 0)
    {
        result += valueToHexDigit(carry % 16);
        carry = carry / 16;
    }

    reverse(result.begin(), result.end());

    return result;
}

int main()
{
    char digit;
    string number;

    cout << "Enter one hexadecimal digit: ";
    cin >> digit;

    cout << "Enter hexadecimal number: ";
    cin >> number;

    cout << "Product: " << multiplyHex(digit, number) << endl;

    return 0;
}
```

---

# 8. Java 프로그램 + `javap -c`

## Java 코드

```java
public class Calculation
{
    public static void main(String[] args)
    {
        int Y = 10;              // Store 10 in Y
        int X = (Y + 4) * 3;     // Calculate X
        System.out.println(X);   // Display X
    }
}
```

실행하면:

```text
42
```

왜냐하면:

$$
(10+4)\times3=42
$$

---

## 컴파일

터미널에서:

```bash
javac Calculation.java
```

그 다음 bytecode를 확인:

```bash
javap -c Calculation
```

대략 다음과 같은 형태의 bytecode가 나온다.

```text
public static void main(java.lang.String[]);
  Code:
     0: bipush        10
     2: istore_1
     3: iload_1
     4: iconst_4
     5: iadd
     6: iconst_3
     7: imul
     8: istore_2
     9: getstatic     #...
    12: iload_2
    13: invokevirtual #...
    16: return
```

### 각각의 의미

| 명령          | 의미                       |
| ----------- | ------------------------ |
| `bipush 10` | 숫자 10을 operand stack에 넣음 |
| `istore_1`  | 10을 지역 변수 Y에 저장          |
| `iload_1`   | Y를 stack에 가져옴            |
| `iconst_4`  | 숫자 4를 stack에 넣음          |
| `iadd`      | 두 값을 더함                  |
| `iconst_3`  | 숫자 3을 stack에 넣음          |
| `imul`      | 두 값을 곱함                  |
| `istore_2`  | 계산 결과를 X에 저장             |
| `return`    | 메서드 종료                   |

즉,

```java
int X = (Y + 4) * 3;
```

은 bytecode 수준에서 대략

```text
Y 가져오기
↓
4 가져오기
↓
더하기
↓
3 가져오기
↓
곱하기
↓
X에 저장
```

과정으로 이루어진다.

> **참고:** `javap -c`의 실제 번호와 `#constant_pool` 번호는 JDK 버전에 따라 달라질 수 있다. 따라서 위의 bytecode는 구조를 이해하기 위한 예시이고, 본인이 직접 `javap -c Calculation`을 실행한 결과가 가장 정확하다.

---

# 9. Unsigned Binary Subtraction

$$
10001000_2-00000101_2
$$

을 계산해야 한다.

---

## 기본 원리

이진수 뺄셈도 10진수와 마찬가지로 **borrow(빌림)**를 사용한다.

기본 규칙은:

```text
0 - 0 = 0
1 - 0 = 1
1 - 1 = 0
0 - 1 = 1, borrow 1
```

## 알고리즘

오른쪽에서 왼쪽으로 이동하면서:

```text
difference = minuend_bit - subtrahend_bit - borrow
```

만약 결과가 음수라면:

```text
difference += 2
borrow = 1
```

그렇지 않으면:

```text
borrow = 0
```

으로 처리한다.

---

## 테스트 1

### `10001000 - 00000101`

```text
  10001000
- 00000101
----------
  10000011
```

✅ **결과: `10000011`**

---

## 테스트 2

### `00001101 - 00000111`

앞에서 풀었던 문제와 동일하다.

```text
  00001101
- 00000111
----------
  00000110
```

10진수로:

$$
13-7=6
$$

따라서:

✅ **`00000110`**

---

## 테스트 3

### `00110010 - 00001010`

```text
  00110010
- 00001010
----------
  00101000
```

10진수로:

$$
50-10=40
$$

40의 이진수:

```text
00101000
```

따라서:

✅ **`00101000`**

---

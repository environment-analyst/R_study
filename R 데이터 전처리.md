# 1. select
* 특정 컬럼만 가져오기-> 정보 선택

## 01.01. 특정 컬럼만 가져오기
```R
df %>%
  select(컬럼명1,컬럼명2)
```

## 01.02. 특정 컬럼만 제외하고 가져오기
```R
df %>%
  select(-컬럼명1,컬럼명2)
```

## 01.03. 컬럼명이 넘 길면 위치(숫자)로 가져올 수 있음
```R
df %>%
  select(3,4)
```

## 01.04. 컬럼명의 시작 글자로 가져올 수 있음
```R
df %>%
  select(strars_with('0))
```

## 01.05. 컬럼명의 끝 글자로 가져오기
```R
df %>%
  select(ends_with('nm'))
```

## 01.06. 컬럼명의 포함글자로 컬럼불러오기
```R
df %>%
  select(contains('t'))
```
-----------


# 2. distinct 
* 중복 제거하기 -> 중복 되는 데이터의 맨 첫번째 행을 제외하고 삭제
* 특정 정보의 손실이 일어날 수 있음

## 02.01. 컬렴 내의 고유값만 가져올 수 있음
```R
df %>%
  distinct(컬럼명)
```

## 02.02. 특정 컬럼 내의 고유값과 행 전부다 가져옴
* .keep_all = T -> 여기서 .keep_all = T임을 까먹지 말장

```R
df %>%
  distinct(컬럼명, .keep_all = T)
```

# 3. filter
* 특정 조건으로 지정해서 가져오고 싶을 때 사용 -> 데이터 선택

## 03.01. 특정 기준을 지정해서 해당 데이터만 가져오기
```R
df %>%
  filter(컬럼명 == 'data')
```
> 컬럼 내에 data라고 쓰여있는 데이터만 가져오기

## 03.02. 특정 기준을 제외한 데이터만 가져오기
```R
df %>%
  filter(컬러명 != 'data')
```
> 컬럼 내의 data라고 적혀있지 않는 데이터만 가져오기

## 03.03. 기준을 모두 충족시키는 자료 가져오기(AND 조건)
```R
df %>%
  filter(컬럼명1 =='data' &
         컬럼명2 == 'information')
```
> 컬럼명1 내에서 data이고 컬럼명2 내에서 information인 자료 가져오기

```R
df %>%
  filter(컬럼명1 =='data' ,
         컬럼명2 == 'information')

df %>%
  filter(컬럼명1 =='data') %>%
  filter(컬럼명2 == 'information')
```

## 03.04. 특정 기준 중 하나만 만족하는 자료 가져오기(OR 조건)
```R
df %>%
  filter(컬럼명1 =='data' |
         컬럼명2 == 'information')
```
> 컬럼명1에서 data 이거나 컬럼명2에서 information인 정보 가져오기(둘 중 하나만 만족 해도 가져올 수 있음)

## 03.05. 특정 기준 중 'INCLUED' 조건으로 가져오기
```R
df %>%
  filter(컬럼명 %in% c('data','information'))
```
> 여기서 컬럼내에서 data, information으로 저장되어 자료 가져오기(해당 행을 다 가져온다)
> 단, 여기서 포함되어 있는 정확한 명을 다 적어야함(ex) dat, info 이렇게 쓰면 안 가져옴)

## 03.06. 특정 단어가 포함되는 문자 모두 찾기
```R
df %>%
  filter(컬럼명 %>% str_detect("adh")

```
>str_detect("")를 사용하면 된다

-------

# 4.mutate
* mutate는 세로운 컬럼을 만들을 때, 사용한다

```R
df %>%
  mutate(컬럼명1 = ifelse(nchar(컬럼명1)<1,NA,컬럼명1))
```
> 이렇게 하면 컬럼명1의 내용에서 글자수가 1보다 작으면 결측치로 처리하고 아니면 컬럼명1의 내용으로 한다
> 그 내용을 다시 컬럼명1에 저장한다



## 04.01. mutate와 filter 같이 사용

```R
df %>%
  mutate(컬럼명1 = ifelse(nchar(컬럼명1)<1,NA,컬럼명1))
  
df %>%
  filter(!컬럼명1 %>% is.na)
```
> 이렇게 이용할 수 있다
> 또, mutate로 새로운 셀도 만들 수 있다

## 04.02. 문자 전처리:str_sub
```R
df %>%
  mutate(컬럼명2 =컬럼명1 %>% str_sub(3,7))
```
>왼쪽부터 1로 시작하며, 3번에서부터 7번까지의 글자를 잘라서 ord_no에 저장함

## 04.03. 문자의 전처리:str_repalce
```R
df %>%
  mutate(컬럼명1 = 컬럼명1 %>% str_replace('바꾸고 싶은 내용', '새값'))
```
> 여기서 str_replace는 처음으로 만나는 값을 바꿈(한개만 변환)
> str_replace_all은 만나는 모든 값을 바꿈(모두 변환)

## 04.04. ifelse(조건 1개)
```R
df %>%
  mutate(나이대 = ifelse(나이<20,'미성년자','성인'))
```
> '나이대'라는 컬럼이 새로 생기고 ifelse(조건,'참일 때 입력값','거짓일 때 입력값')

## 04.05. ifelse(조건 여러개)
```R
df %>%
  mutate(나이대 = ifelse(나이<20,'미성년자'.
                  ifesle(나이<30,'20대',
                  ifelse(나이<40,'30대','40대이상'))))
```
>조건이 여러개 일 땐, 아닐 거짓일 때 입력값에 조건을 추가하면 된다.
>괄호를 잘 닫는 것 잊지 말자
>예외처리 하는 것도 잊지말자! 여기서 오해가 생길 확률이 높다



# 5.lubridate
```R
df %>%
  mutate(날짜_ymd = 날짜_dmy %>% dmy())
```
>날짜 date month year 순을 dmy()를 사용하면 year month date 순으로 변한다

```R
df %>%
  mutate(날짜2 = 날짜1 + day(30))
```
> 날짜로 변환되어 있는 값에 day(30)일을 하면 알아서 달력식으로 계산됨

```R
df %>%
  mutate(몇번째주 = 날짜_dmy %>% week())
```
> 날짜에 week()사용하면 몇번 째 주인지 출력

```R
df %>%
  mutate(요일 = 날짜_dmy %>% wday(label = T))
```
> 날짜에 wday(label = T) 라고 하면 요일을 출력(한글로)

## paste0,paste
```R
paste0('안','녕','?)
paste('안','녕','?')
```
>paste0는 ,를 다 붙여서 출력
>paste는 ,를 다 띄여서 출력



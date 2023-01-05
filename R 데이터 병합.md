# 1. join

<img width="341" alt="image" src="https://user-images.githubusercontent.com/118961766/210703145-76d5cd69-926e-45a9-a216-74ff0e261867.png">

* join을 이용할 때는 공통적으로 겹치는 항목(컬럼)이 있어야 합칠 수 있다

```R
left_join
right_join
inner_join
full_join
```
1. left_join(df1,df2) -> df1의 자료를 기준으로 병합
2. right_join(df1,df2) -> df2의 자료를 기준으로 병합
3. inner_join(df1,df2) -> df1과 df2의 대응되는 행만 병합(나머지는 없어짐)
4. full_join(df1,df2) -> df1과 df2의 모든 값과 행을 병합

# 2. group_by & summarise

<img width="506" alt="image" src="https://user-images.githubusercontent.com/118961766/210713408-1e3cb259-2b36-47e2-886b-5fcf7207fa5c.png">

<img width="540" alt="image" src="https://user-images.githubusercontent.com/118961766/210713894-d6e0f288-5dfd-4b11-88ee-05b2ee0f420b.png">


* 무엇을 기준으로 묶을 것인지
* 만약, 내가 연령별로 물품의 구매량을 분석한다 할때
```R
df %>%
  group_by(연령,물품) %>%
  summarise(총 구매량 =sum(구매량),
            행의 수  = n())
```

# 3. 데이터 집계 : long_format

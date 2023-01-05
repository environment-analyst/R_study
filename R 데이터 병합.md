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

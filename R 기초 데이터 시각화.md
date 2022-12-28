# R 기초 데이터 시각화
## 데이터 읽어오기
write.csv(객체명,"파일경로/파일명.csv",row.names = F)

|확장자|R script|
|-----|----------|
|CSV|read.csv("파일경로/파일명.csv")</br>fread("파일경로/파일명.csv")|
|XLSX|read_excel("파일경로/파일명.xlsx",sheet="가져올 시트명" or 숫자)|
|googlesheet|read_sheet("가져올 googlesheet 주소",sheet="가져올 시트명" or 숫자)|
----------

## %>%
1. 쇠사슬: 데이터를 연결해 주는 기호
2. ctrl + shift + m 누르면 자동 생성


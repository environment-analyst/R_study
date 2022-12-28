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
2. `ctrl` + `shift` + `m` 누르면 자동 생성

## R studio 단축키
`ctrl` + `shift` + `k` : 단축키 확인</br>
`ctrl` + `enter` : 한 줄 스크립트 실행</br>
`ctrl` + `shift` + `enter` : 전체 스크립트 실행 -> 사용에 주의, 데이터가 많은 경우 문제 발생</br>
`ctrl` + `d` : 해당 라인 삭제하기</br>
`ctrl` + `shift` +` z` : 앞으로 되돌리기</br>
`ctrl` + `shift` +` c` : 주석처리하기</br>
`alt` +` - `: <- 표시 한번에 하기</br>
`ctrl` + `shift` + `m` : `%>%` 표시 한번에 하기</br>
`ctrl` + `shift` + `o` : 주석 목록 보기</br>
`----`(하이픈 * 4) : 주석 처리</br>
`ctrl` + `shift` + `h` : 경로 설정</br>

## 라이브러리
**파일 열자마자 설정해주기**</br>
`library(라이브러리)`</br>
->dplyr,lubridate,stringr,data.table 등등 도 다 하기

단, 라이브러리 실행전 먼저 설치되어 있어야 함</br>
->`install.packate("라이브러리")`코드로 설치

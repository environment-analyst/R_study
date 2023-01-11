
# mariaDB----

# 사용하는 주요 함수

#select

#seq() 함수는 등차수열을 나타내는데 사용되는 함수
#반복되는 자료값을 입력하는데 편리

#data.frame()----
#df <- data.frame(변수1, 변수2, 변수3)
# 변수1 <- c()
# 여기서 변수1은 컬럼명이고 c() 안에 들어가는 내용은 각각의 행으로 들어가는 내용

# data.frame() 변수 추가
# df$변수4 <- c(내용1,내용2,내용3) : 각각의 내용으로 들어감 

# data.frame() 결합
# rbind(df1,df2) : 행 결합(조건 열 개수가 같아야 오류가 안 뜬다)
# cbind(df3,df4) : 열 결합(조건 행 개수가 같아야 오류가 안 뜬다)
# merge(df1,df2,key='열') : key 어떤 열을 가지고 df1과 df2 합칠 것인지

# data.frame() 슬라이싱
# student[,2],student[[2]],student$height
# student 테이블에서 2번째 필드(열)을 가져온다, 옆에도 같은 의미
# student 테이블에서 height 필드(열)을 가져옴

# student[,-1]:student에서 1번째 행을 제외한 전체 구성요소를 가져와라
# studnet[1:2,]: student에서 1번째부터 2번째 행에 있는 구성요소를 가리켜라
# studnet[student$height>11] :student 테이블에서 height 필드의 값이 11보다 큰 값만 가져오라

# formattable()

#renderFormattable()

# slice() 함수의 의미

# input() 
# intput$은 output$과 같이 웹의 세계에 있는 변수입니다. 그래서 *Input() 함수들을 통해서 input$의 컬럼 이름으로 웹 페이지 내에서 얻을 수 있는 데이터를 R의 세계에서 사용할 수 있게 해줍니다. 우선 input$에 웹의 세계의 데이터를 R의 세계로 가져와 보겠습니다.
# sliderInput("sdata1", "슬라이더 입력:", min=50, max=150, value=100)
# 위의 코드는 sliderInput()이라는 *Input() 패밀리 함수를 통해서 input$sdata1이라는 곳에 웹 데이터를 저장하는 것을 뜻합니다. *Input() 패밀리 함수는 같은 규칙을 가지는데 입력형태명Input()의 함수명을 가지고, 첫번째 인자는 input$ 뒤로 붙을 컬럼명, 두번째 인자는 화면에 보여줄 글자를 의미합니다. 나머지 인자는 입력형태에 따라 다양하게 달라집니다. shiny에서 지원하는 입력형태는 이곳을 확인해 주세요.
# sliderinput()

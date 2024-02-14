# 자취생을 위한 레시피사이트 자취생을 부탁해

## 프로젝트 소개
나날이 비싸져가는 배달료!
나날이 가벼워지는 자취생의 지갑!

그들의 지갑을 지키기 위해 탄생하였다!

자취생을 부탁해 사이트는
자취생들이 가지고 있는 냉장고 재료를 기반으로
다양한 요리를 보여주는 사이트입니다.


## 팀원 역할 분담
### 이진우
- 로그인/회원가입/회원정보수정
    - 네이버, 카카오 소셜 로그인
    - 휴대폰, 이메일 인증
    - 네이버 캡챠 인증
- 마이페이지
- 쉐프페이지
- 고객센터
    - 네이버 스마트에디터
-최근 본 레시피
### 오상경
- 메인페이지
- 레시피 분류/검색
- 냉장고
    - 카카오 지도
- 레시피 상세페이지/ 댓글 등록
- 레시피 등록
- 매거진
### 김하람
- 쇼핑몰 메인페이지
- 상품 상세페이지
- 장바구니
- 주문서 작성페이지
  - 결제
  - 우편번호 검색
## 개발 기간
- 전체 개발 기간 : 2023.10.09 ~ 2024.01.31
- UI 구현 : 2023.10.09 ~ 2023.12.29
- 기능 구현 : 2024.01.02 ~ 2024.01.31
## 개발 환경
- Front-end : HTML,CSS,JS,jQuery,AJAX
- Back-end : Apache Tomcat, JSP,JDBC,ORACLE
- IDE : Eclipse
## 프로젝트 구조
<pre>
    ├─.settings
├─build
│  ├─action
│  ├─classes
│  │  ├─action
│  │  ├─common
│  │  ├─controller
│  │  ├─dao
│  │  ├─dto
│  │  ├─servlet
│  │  ├─test
│  │  ├─vo
│  │  └─websocket
│  ├─common
│  ├─controller
│  ├─dao
│  ├─dto
│  ├─servlet
│  ├─vo
│  └─websocket
├─src
│  ├─action
│  ├─common
│  ├─controller
│  ├─dao
│  ├─dto
│  ├─servlet
│  ├─test
│  ├─vo
│  └─websocket
└─WebContent
    ├─html
    ├─Images
    │  └─event
    ├─js
    ├─Member_CSS
    ├─META-INF
    ├─Recipe_CSS
    │  └─Public
    ├─remaining_files
    ├─se2823
    │  ├─css
    │  ├─img
    │  │  └─ko_KR
    │  ├─js
    │  │  └─lib
    │  └─sample
    │      ├─js
    │      │  └─plugin
    │      ├─photo_uploader
    │      │  └─img
    │      └─viewer
    │          └─htmlpurifier
    │              └─standalone
    │                  └─HTMLPurifier
    │                      ├─ConfigSchema
    │                      │  ├─Builder
    │                      │  ├─Interchange
    │                      │  └─schema
    │                      ├─DefinitionCache
    │                      │  └─Serializer
    │                      │      └─HTML
    │                      ├─EntityLookup
    │                      ├─Filter
    │                      ├─Language
    │                      │  ├─classes
    │                      │  └─messages
    │                      ├─Lexer
    │                      └─Printer
    ├─Store_CSS
    └─WEB-INF
        └─lib
</pre>
## 페이지별 기능
### 스토어 메인
  - 화살표 클릭시 slick을 이용하여 다른 상품들을 보여줍니다.
    ![메인페이지_slick gif](https://github.com/ram9611/recipe-store-project/assets/66862342/3ae5d01f-8793-48e0-92fa-9a1e214da2cc)
  - 상품 클릭시 해당 상품 상세페이지로 이동합니다.
    ![메인페이지_화면이동 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/16517e08-8536-4efd-89ca-9e1b24a982de)
### 상품 상세
  - 상품 옵션 선택 후 장바구니 버튼 클릭시 상품 옵션들과 함께 장바구니 페이지로 이동합니다. 선택한 옵션이 없다면 알림이 발생합니다.
    ![상품상세페이지_화면이동 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/f19d9aed-ff15-49b0-919e-08bbd8a61f60)
### 장바구니
- 상품 옵션 선택하고 상품 삭제 클릭시 해당 옵션이 삭제됩니다. 선택한 옵션이 없다면 알림이 발생합니다.
    ![장바구니_상품삭제 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/627a5cff-47b5-44ad-a15e-645f79ab2513)
- 상품 옵션 선택하고 선택 구매 클릭시 해당 옵션들과 함께 주문서 페이지로 이동합니다. 선택한 옵션이 없다면 알림이 발생합니다.
   ![장바구니_선택구매](https://github.com/ram9611/recipe-store-project/assets/66862342/0fd4808d-b7c7-4e56-bea8-e26efc7c85c1)
- 전체 구매 클릭시 장바구니에 전체 옵션들과 함께 주문서 페이지로 이동합니다.
    ![장바구니_전체구매 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/5bf7d880-ae2b-413d-9285-6956490f7008)
### 주문서 작성
 - 기본 배송지 선택시 유저가 등록한 기본 배송지로 입력값이 채워집니다. 직접입력 선택시 입력값들은 빈칸으로 보여줍니다.
  ![주문서_기본배송지 직접입력 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/38713ef5-c4dd-4c84-acca-cd90c6022a2d)
- 배송지 선택 클릭시 해당 배송지 정보로 입력값이 채워집니다.
  ![주문서_배송지선택 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/ebd57170-04ae-4ca0-aa93-68aacc9c6b16)
- 배송지 수정 클릭시 해당 배송지 정보 수정 가능합니다.
  ![주문서_배송지수정 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/7d50f7b8-c918-4b33-945b-a98e8b20447d)
- 새 배송지 입력 클릭시 유저의 새로운 배송지 등록이 가능합니다.
  ![주문서_새배송지입력 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/47869b63-e84f-4c06-9465-34d10f3e4d79)
- 우편번호 클릭시 우편번호 창이 생성되며, 주소 선택시 해당 주소 정보로 입력값이 채워집니다.
  ![주문서_우편번호검색](https://github.com/ram9611/recipe-store-project/assets/66862342/949eb847-7c9d-421c-b5fc-3d26b3dc089a)
- 결제정보가 임의로 훼손된다면 결제는 진행되지 않으며 알림 발생 후 메인 페이지로 이동합니다.
  ![주문서_결제실패 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/9b2e8865-8151-43e9-acbe-1fc5b104e774)
- 결제하기 클릭시 카카오 결제창으로 결제 진행합니다.
 ![주문서_결제 gif](https://github.com/ram9611/recipe-store-project/assets/66862342/52763044-adf5-4b4c-bb7d-14a0765c7dc3)
## 프로젝트 후기
  ### 이진우
  ### 오상경
  ### 김하람
    정규 수업 과정에서 배운 것을 활용하여 하나하나씩 구현하는 과정이 어렵기도 했지만 많은 것을 배울 수 있어서 좋았습니다. 
    특히 이론으로만 알고 있었던 MVC 패턴을 프로젝트에 적용하면서, 많은 공부가 되었습니다. 아쉬운 점은 구현 과정중에 발생한
    이슈들을 어떻게 해결했는지 작성하지 못한 것이 아쉽습니다. 그래도 프로젝트 구현 기간동안 정말 치열하게 살았던 것 같습니다.
    앞으로도 더 많이 배우고 성장하는 개발자가 되고 싶습니다.
    












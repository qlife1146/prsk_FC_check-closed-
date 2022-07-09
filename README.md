# prsk_FC_check

웹에서 풀콤보 표시를 할 수 있게 작성된 코드입니다.

해결해야 할 문제
1. for문 중에 엑박 사진(not loading image)이 있으면 무시하는 try-catch 구문 완성
2. 브라우저의 로컬 스토리지에 배열(Array)로 저장해 처음 페이지를 열면 갖고 오는 형식으로 만들 예정
3. 처음 방문을 구분하는 구문 추가
4. 방문 때 처음 방문을 구분하고 처음 방문이면 배열 초기화를, 그 이후는 데이터를 가져오는 구문 추가

흐름도
1. 처음 방문하면 로컬 스토리지에 불러온 사진 갯수 크기의 배열을 생성하고 모두 미클리어(0) 상태로 저장한다.
2. 미클리어한 곡(투명도:1)을 클릭하면 opacity가 흐려지며, 배열[id-1]의 상태는 클리어(1)로 바뀐다. 반대로 클리어한 곡을 클릭하면 opacity가 1로 돌아오며 배열[id-1]의 상태는 미클리어(0)로 바뀐다.
3. 재방문할 때는 초기화 없이 로컬 스토리지에 저장된 기존 데이터를 갖고와서 클리어 상태로 돌린다.

[![Netlify Status](https://api.netlify.com/api/v1/badges/b6a0a735-6736-41b5-938f-98e32adbbbe6/deploy-status)](https://app.netlify.com/sites/jovial-raindrop-0cec21/deploys)

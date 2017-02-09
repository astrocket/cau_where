
restaurant_list = %w(
    유정쌈밥
    뚝배기스파게티
    육쌈냉면
    맥도날드
)

#비스트로엔 부산집 가야 북경 차돌이식당 커리야 미니자이언트 하노이별 큰별 일이삼 중앙돼지마을 학떙 몬스터밥 고씨네 라이스앤포테이토
#싸움의고수 흑수돈 엉터리생고기 숯부래 해랑 가네미 더진국 도스마스 도스타코스 내찜닭 치즈가사랑하는찜닭 경대컵밥 알촌 지지고 니뽕내뽕
#홍수계 등촌칼국수 청기와 순대나라

Shop.create(id: 1, shop_type: 'general')
Shop.create(id: 2, shop_type: 'commercial')

restaurant_list.each do |title|
  Restaurant.create(title: title, shop_id: 1)
end

pub_list = %w(
    레드락
    봉구비어
    삼거리포차
    스파이키
)

#옹골진 잠꾸러기 장독대 캐빈 프렌즈 대왕대포 살롱702 모라비어

pub_list.each do |title|
  Pub.create(title: title, shop_id: 1)
end
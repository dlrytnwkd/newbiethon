class HomeController < ApplicationController
  def first
     @posts = Post.all
       
  end

  def two
    @users = User.new
    @users.name = params[:name]
    @users.age = params[:age]
    @users.gender = params[:gender]
    @users.location = params[:locations]
    @users.workplace = params[:workplace]
    @users.movie = params[:movie]
    @users.sports = params[:sports]
    @users.music = params[:music]
    @users.art = params[:art]
    @users.travelhow = params[:travelhow]
    
    @users.save
    
    @movie_title = Movie.all
    @sport = Sport.find(Random.rand(2)+1)
    
    @genre = params[:movie].to_s
  
    @print_title = Movie.select(params[:movie]).sample(1)
    @loco_title = Movie.find(Random.rand(2)+1).loco
    @thriller_title = Movie.find(Random.rand(2)+1).thriller
   # @sf_title = Movie.find(Random.rand(2)+1).sf
    @comedy_title = Movie.find(Random.rand(2)+1).comedy
    
      
    
      
    
    
    # @route1 = params[:movie]
    #   route1_1 =['브리짓존스의 베이비','러브액츄얼리','프로포즈','오늘의 연애','디스민즈워' ]
    #   @route1_1 =route1_1.sample(1)
       
   
    #   route1_2 = ['식스센스', '숨바꼭질', '곡성', '아저씨', '나를 찾아줘', '싸이코']
    #   @route1_2 = route1_2.sample(1)
    
    #   route1_3 = ['엔더스게임', '인셉션', '마션','아일랜드','블레이드러너','인터스텔라','쏘우']
    #   @route1_3 = route1_3.sample(1)
      
    #   route1_4 = ['내가 널 사랑할 수 없는 10가지 이유', '엽기적인 그녀', '화이트칙스' , '19곰테드']
    #   @route1_4 = route1_4.sample(1)
      
    
    # @route2 = params[:sports]
    # route2_1 = ['석촌 호수 공원', '서울숲', '한강공원','세빛섬']
    # @route2_1 = route2_1.sample(1)
     
    # route2_2 = ['스크린 야구존', '잠실 야구 경기장','마구마구']
    #   @route2_2 = route2_2.sample(1)
      
    # route2_3 = ['전주 월드컵 경기장', '서울 월드컵 경기장', '남양주 축구장','학교']
    #   @route2_3 = route2_3.sample(1)
      
    # route2_4 = ['서울 광장 스케이트장', '롯데월드 아이스링크','목동 아이스링크','제니스 아이스링크']
    #   @route2_4 = route2_4.sample(1)
      
    # route2_5 = ['잠실 실내 수영장', '한강공원 수영장','캐리비안 베이','롯데호텔월드 수영장']
    #   @route2_5 = route2_5.sample(1)
    
    # @route3 = params[:music]
    # route3_1 = ['sm 타운', '플레이 케이팝', '케이팝 듣기']
    #   @route3_1 = route3_1.sample(1)
      
    # route3_2 = ['고등래퍼', '쇼미더머니','언프리티랩스타']
    # @route3_2 = route3_2.sample(1)
    
    # route3_3 = ['재즈바 가기','재즈 콘서트','이태원 재즈바']
    # @route3_3 = route3_3.sample(1)
    
    # route3_4 = ['성시경 콘서트', '포맨 콘서트','신승훈 콘서트','멜로망스 콘서트']
    # @route3_4 = route3_4.sample(1)
    
    # @route4 = params[:art]
    # route4_1 =['대림 조각 미술관','퍼즐 조각 공원',' 삼성 리움']
    # @route4_1 = route4_1.sample(1)
    
    # route4_2 = ['민속 공예관', '커피와 목공소', '제인 크래프트', '서울 공예 미술관']
    # @route4_2 = route4_2.sample(1)
    
    # route4_3 = ['르누아르 카페','팝아트 전시회','현대 미술관']
    # @route4_3 = route4_3.sample(1)
    
    # route4_4 = ['현대 모던 아트 디자인','ddp','브리태니 디자인관']
    # @route4_4 = route4_4.sample(1)
    
    # route4_5 =['출사','동그라미 사진관','사진 찍으러 가기','아담스 사진 전시회']
    # @route4_5 = route4_5.sample(1)
    
    @travel_title = Array.new()
    
    @route5 = params[:travelhow]
    
    old_users = User.all
    
    friends = Array.new()
    @count = 0
    
    old_users.each do |userArr|
      if ( @users.workplace != userArr.workplace && userArr.location == @users.location )
        if ( userArr.movie == @users.movie ||  userArr.sports == @users.sports || userArr.music == @users.music || userArr.art == @users.art || userArr.travelhow == @users.travelhow )
           friends << userArr.name
           @count += 1
          end
        end
      end
  
    @friend = friends.sample();
    
    my_mate = User.where(name: @friend)
    
    my_mate.each do |mate|
      if( @users.movie == mate.movie)
          @travel_title << @users.movie
      end
    
      if(@users.sports == mate.sports)
          @travel_title << @users.sports
      end
    
      if(@users.music == mate.music)
          @travel_title << @users.music
      end
    
      if(@users.art == mate.art)
          @travel_title << @users.art
      end
    
      if(@users.travelhow == mate.travelhow)
          @travel_title << @users.travelhow
      end
    end

  end
  
  def three
 


  end
  
  def three_1
    
   
  end
  
  def three_2
  
    
  end
  
  def three_3

  end
  
  def four
    user_r = User.where(name: params[:name])
    user_r.each do |user|
      if ( user.rating == nil )
        user.rating = params[:rating]
      else
        user.rating = (user.rating + Integer(params[:rating]))/2
      end
      user.save
    end
  end
end
  
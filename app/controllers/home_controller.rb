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
    
    @genre = params[:movie]
    @s_name = params[:sports]
    @m_name = params[:music]
    @a_genre = params[:art]
    
    @movie_title = Movie.select(params[:movie]).sample()
    @movie_title = @movie_title["#{@genre}"]
    
    @sport_name = Sport.select(params[:sports]).sample()
    @sport_name = @sport_name["#{@s_name}"]
    
    @music_title = Music.select(params[:music]).sample()
    @music_title = @music_title["#{@m_name}"]
    
    @art_type = Art.select(params[:art]).sample()
    @art_type = @art_type["#{@a_genre}"]
    
    @travel_title = Array.new()
    
    #@route5 = params[:travelhow]
    
    old_users = User.all
    
    friends = Array.new()
    @count = 0
    
    old_users.each do |userArr|
      if ( @users.workplace != userArr.workplace && userArr.location == @users.location )
        if ( userArr.movie == @users.movie ||  userArr.sports == @users.sports || userArr.music == @users.music || userArr.art == @users.art || userArr.travelhow == @users.travelhow )
           friends << userArr.name
          end
        end
      end
  
    @friend = friends.sample();
    
    my_mate = User.where(name: @friend)
   
    
    my_mate.each do |mate|
       @friend_rate = mate.rating
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
     @my_genre = params[:movie]
    
  end
  
  def three_1
    @my_sname = params[:sports]

  end
  
  def three_2
    @my_mtype = params[:music]


  end
  
  def three_3
    
    @a_genre = params[:art]
    
  
  
    

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
  
  def rank
    
    @user_all = User.all
    # @user_ranker_name
    # @user_ranker = @user_all.find(11).rating
    # i = 11
    # @test = '출력'
    
    @max
    
    # @user_all.each do |rankers|
    #   if(@user_ranker < rankers.find(12).rating)
    #     @user_ranker_name = rankers.find(12).name
    #   end
    # end
    
  end
end
  
class SongController < ApplicationController

  def information
    @songs = Song.new()    
  end

  def seem
    @songs = Song.new()
    session[:title] = params[:title]
    session[:composer] = params[:composer]
    session[:age] = params[:age]
    session[:tonality] = params[:tonality]
    session[:composition] = params[:composition]
  end

  def target
    @songs =Song.new()
    session[:rank] = params[:rank]
  end

  def plan
    @songs =Song.new()
    session[:partTarget] = params[:partTarget]
    session[:overallTarget] = params[:overallTarget]
  end

  def list
    @songs = Song.all
  end
  def detail
    @song = Song.find(id: params[:id])
  end

  def plans
   @song = Song.create(
     title: session[:title],
     composer: session[:composer],
     age: session[:age],
     tonality: session[:tonality],
     composition: session[:composition],
     rank: session[:rank],
     partTarget: session[:partTarget],
     overallTarget: session[:overallTarget],
     partPlan: params[:partPlan],
     overallPlan: params[:overallPlan]
   )
    if @song.save
      redirect_to('/list')
    else
      render('song/information')
    end
  end

  def destroy
    @song = Song.find(id: params[:id])
    @song.destroy
    redirect_to('/list')
  end

end

class TopicsController < ApplicationController
  before_action :logged_in_action?
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)

    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title,:target,:date_time,:place_search,:price,:image1,:image2,:image3, :description)
  end
end

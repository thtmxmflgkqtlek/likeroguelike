class SessionController < ApplicationController
  skip_before_filter :find_login_user, :only => [:new, :create]
  def new
  end

  def create
    @name = params[:name]
    @password = params[:password]
    @user = User.authenticate(@name, @password)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインに成功しました"
      if @user.adm?
        redirect_to :root
      else
       redirect_to :root
      end
    else
      @error = "ログインに失敗しました"
      render :action => :new
    end
end

   def destroy
         reset_session
         redirect_to root_url
   end


end

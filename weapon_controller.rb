class WeaponController < ApplicationController
  def index
     @datas = []
     @takes = []
     @tas = []
     a = params[:itemGetCount]
     a = a.to_i
     v = 0
     s = 0
      
    #  @uuuu = User.find(session[:user_id])

     a.times{|sample|
       x = Random.rand(0..255)
       @datas.push(Weapon.find(x))

       Bring.create(:user_id => session[:user_id], :weapon_id => x)
     }

    @takes = Bring.where(user_id: session[:user_id]).pluck(:weapon_id)

     @takes.each {|sample|
       @tas.push(Weapon.find(sample))
  }


    # i = Bring.count(:user_id)
    #  i.times {|sample|
    #  @takes = Bring.where(user_id: session[:user_id]).pluck(:weapon_id)
    #  v || (v = 0)
    #  s || (s = 0)
    #  s = @takes.at[v]
    #  @tas.push(Weapon.find(s))
    #  v += 1
  # }
    # Bring.joins(:bring).preload(:bring)
    # @takes.push(Weapon.find(user_id: session[:user_id]))
  
end
end

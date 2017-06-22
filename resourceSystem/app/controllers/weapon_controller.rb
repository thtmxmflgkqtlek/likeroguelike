class WeaponController < ApplicationController
  def index
     @datas = []
     a = params[:itemGetCount]
     a = a.to_i


     a.times{|sample|
       x = Random.rand(0..255)
       @datas.push(Weapon.find(x))
     }

end
end

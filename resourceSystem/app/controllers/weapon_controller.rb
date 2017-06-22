class WeaponController < ApplicationController
  def index
    num = params(itemGetCount)
    @datas = []
    i = 0
    for i < num do
    x = Random.rand(0..255)
    @datas.push(Weapon.find(x))
    i = i + 1
    end
  end

end

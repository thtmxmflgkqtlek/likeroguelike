class WeaponController < ApplicationController
  def index
    @datas = Weapon.all
  end

end

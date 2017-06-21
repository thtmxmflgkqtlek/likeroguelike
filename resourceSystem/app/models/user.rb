class User < ActiveRecord::Base
  validates :password, :presence => true, :confirmation => true
  validates :name, :presence => true, :confirmation => true


   before_create :digest_password

   def self.authenticate(name, password)
       where(:name => name, :password =>
Digest::SHA1.hexdigest(password)).first
   end

    private
   def digest_password
        self.password = Digest::SHA1.hexdigest(self.password)
   end

end

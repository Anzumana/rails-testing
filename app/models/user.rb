class User < ActiveRecord::Base
  attr_accessible :password, :userName, :email
end
class Welcome < ActiveRecord::Base
  attr_accessible :password, :userName
end

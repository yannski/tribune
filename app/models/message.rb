class Message
  include Mongoid::Document
  include Mongoid::Timestamps::Created 

  field :body, :type => String
  field :user_name, :type => String
  field :room_name, :type => String, :index => true

  alias :uid :id
end

class Message
  include Mongoid::Document
  include Mongoid::Timestamps::Created 

  field :body, :type => String
  field :user_name, :type => String
  field :room_name, :type => String, :index => true

  alias :uid :id

  validate :room_name_should_be_sluggified

  def room_name_should_be_sluggified
    errors.add(:room_name, :invalid) if room_name != room_name.parameterize
  end
end

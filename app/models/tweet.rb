class Tweet
  include Mongoid::Document
  field :description, type: String

  belongs_to :user, validate: true
end

class Tweet
  include Mongoid::Document
  field :description, type: String

  embedded_in :user
end

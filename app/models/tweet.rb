class Tweet
  include Mongoid::Document
  field :description, type: String
  validates :description, presence: true
  validates :description, length: { maximum: 140 }

  belongs_to :user, validate: true
end

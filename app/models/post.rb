class Post < ActiveRecord::Base
  scope :publish, -> { where(publish_at < Time.now) }
  scope :work, -> { where( category: "work") }
  scope :life, -> { where( category: "life") }
end

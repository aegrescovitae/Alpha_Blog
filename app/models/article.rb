class Article < ActiveRecord::Base
    belongs_to :user
    before_save { self.email = email.downcase }
    validates :title, presence: true, length: {minimum: 5, maximum: 100}
    validates :description, presence: true, length: {minimum: 10, maximum: 5000}
    validates :user_id, presence: true
end
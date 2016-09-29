class User < ApplicationRecord
    validates :name, :password, presence: true, length: { maximum: 15 }
    validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ }
    validates :port, presence: true, uniqueness: true, numericality: { greater_than: 1000, less_than: 9000 }, length: { is: 4 }
end

class Student < ApplicationRecord
  has_many :projects, dependent: :destroy
  
  validates :first_name, :last_name, :clg, :branch, presence: true

  attr_accessor :full_name

  def full_name
    "#{first_name} #{last_name}"
  end
end

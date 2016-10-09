class Idea < ActiveRecord::Base
  validates :what, presence: true
  validates :usage, presence: true
end

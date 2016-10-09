class Idea < ActiveRecord::Base
  validate :what, presence: true
  validate :usage, presence: true
end

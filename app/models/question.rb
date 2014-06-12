class Question < ActiveRecord::Base

  validates :title,
  presence: true,
  length: { minimum: 40, too_short: "Must be at least 40 characters long." }

  validates :description,
  presence: true,
  length: { minimum: 150, too_short: "Must be at least 150 characters long."  }
end

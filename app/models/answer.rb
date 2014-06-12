class Answer < ActiveRecord::Base
  validates :description,
  presence: true,
  length: { minimum: 50, too_short: "Must be at least 50 characters long."  }
end

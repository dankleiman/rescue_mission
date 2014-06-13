class UpdateDatatypeForAnswerDescription < ActiveRecord::Migration
  def change
    change_column(:answers, :description, :text)
  end
end

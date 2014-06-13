class UpdateDatatypeForQuestionDescription < ActiveRecord::Migration
  def change
    change_column(:questions, :description, :text)
  end
end

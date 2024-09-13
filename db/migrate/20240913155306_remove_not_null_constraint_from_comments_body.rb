class RemoveNotNullConstraintFromCommentsBody < ActiveRecord::Migration[6.1]
  def change
    change_column_null :comments, :body, true
  end
end

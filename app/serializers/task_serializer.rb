class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :task, :description,:complete, :category_id, :category
  belongs_to :category
end

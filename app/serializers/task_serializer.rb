class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :task, :description, :category_id, :category
  belongs_to :category
end

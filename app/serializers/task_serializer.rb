class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :task, :description, :category_id, :category
end

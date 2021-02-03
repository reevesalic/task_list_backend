class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :task, :category_id, :category
end

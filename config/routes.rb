Rails.application.routes.draw do
  get "/fortune", to: 'exercises#fortune'
  get "/numbers", to: 'exercises#numbers'
  get "/visits", to: 'exercises#visits'
  get "/lyrics", to: 'exercises#lyrics'
end

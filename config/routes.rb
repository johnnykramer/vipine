Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'ss#index'
    get '/ss/new'
    post '/ss/show'
    get '/ss/show'
    post '/ss/create'
end

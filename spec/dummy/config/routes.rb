Dummy::Application.routes.draw do
  root :to => 'welcome#index'
  resources :logs
end

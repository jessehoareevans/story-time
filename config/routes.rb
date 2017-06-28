Rails.application.routes.draw do
  root :to => 'story_lists#index'
  resources :story_lists do
    resources :adventures
  end

end

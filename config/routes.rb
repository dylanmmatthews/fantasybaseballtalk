Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'

get 'post/:id', to: 'home#post', as: 'post'

root 'home#index'

resources :home
end

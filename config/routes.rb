Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'


get 'blog', to: 'blog#index'
get 'blog/post/:id', to: 'blog#post', as: 'blog_post'

get 'chat', to: 'chatroom#index'

root 'home#index'

resources :home
end

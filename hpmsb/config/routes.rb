Hpmsb::Application.routes.draw do
  resources :post_categories

  resources :division_categories

  resources :members

  devise_for :member_users
  resources :achievements
  resources :journals
  resources :alumnis
  resources :galleries
  resources :abouts
  resources :histories 
  resources :agendas
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  resources :profiles
  resources :divisions 
  resources :galleries 
  resources :divisions
  resources :inventories  
  resources :elder_members  
  resources :guests   
  resources :static_pages
  resources :posts do
    resources :comments
  end
  root to: "posts#index"
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/about',  to: 'static_pages#about',    via: 'get'

end

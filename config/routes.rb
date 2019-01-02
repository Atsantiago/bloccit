Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  get 'sponsored_posts/show'
  get 'sponsored_posts/new'
  get 'sponsored_posts/edit'
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end

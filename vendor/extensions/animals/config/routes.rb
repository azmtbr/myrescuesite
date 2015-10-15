Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :animals do
    resources :animals, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :animals, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :animals, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end

Tapir::Application.routes.draw do

  resources :known_issues

  resources :related_issues

  resources :related_resources

  resources :authentications

  resources :steps

  resources :examples

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :rest_param_examples

  match '/datatypes', :to => 'rest_datatypes#index', :as => 'datatypes'

  resources :rest_param_formats
  resources :rest_param_values
  resources :rest_resource_params
  resources :rest_resources
  resources :rest_objects

  root :to => "pages#home"
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

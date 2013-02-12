Project::Application.routes.draw do

  #mount PlazrAuth::Engine  => '/'
  mount PlazrStore::Engine => '/'

end

class WelcomeController < ApplicationController
  # GET /admin/welcomes
  def index
    @albums = Album.all
  end
end

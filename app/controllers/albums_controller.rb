class AlbumsController < ApplicationController
  # GET /admin/albums
  def index
    @albums = Album.all
  end

  # GET /admin/albums/new
  def new
    @album = current_user.albums.new
  end

  # POST /admin/albums
  def create
    @album = current_user.albums.new(album_params)
    if @album.save
      flash[:success] = "Album was successfully created."
      redirect_to root_path
    else
      flash[:error] = @album.errors.full_messages
      render "new"
    end
  end

  # GET /admin/albums/:id/edit
  def edit
    @album = Album.find(params[:id])
  end

  # PATCH /admin/albums/:id
  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      flash[:success] = "Album was successfully updated."
      redirect_to albums_path
    else
      flash[:error] = @album.errors.full_messages
      render "edit"
    end
  end

  # PATCH /admin/albums/:id
  def destroy
    @album = Album.find(params[:id])
    @album.delete
    flash[:success] = "Album was successfully destroyed."
    redirect_to albums_path
  end

  # GET /admin/albums/:id
  def show
    @album = Album.find(params[:id])
  end

  private
  def album_params
    params.require(:album).permit(:name, :user_id)
  end
end

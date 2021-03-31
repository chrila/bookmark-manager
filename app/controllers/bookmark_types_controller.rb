class BookmarkTypesController < ApplicationController
  before_action :set_bookmark_type, only: %i[ show edit update destroy ]

  # GET /bookmark_types or /bookmark_types.json
  def index
    @bookmark_types = BookmarkType.all
  end

  # GET /bookmark_types/1 or /bookmark_types/1.json
  def show
  end

  # GET /bookmark_types/new
  def new
    @bookmark_type = BookmarkType.new
  end

  # GET /bookmark_types/1/edit
  def edit
  end

  # POST /bookmark_types or /bookmark_types.json
  def create
    @bookmark_type = BookmarkType.new(bookmark_type_params)

    respond_to do |format|
      if @bookmark_type.save
        format.html { redirect_to @bookmark_type, notice: "Bookmark type was successfully created." }
        format.json { render :show, status: :created, location: @bookmark_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmark_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmark_types/1 or /bookmark_types/1.json
  def update
    respond_to do |format|
      if @bookmark_type.update(bookmark_type_params)
        format.html { redirect_to @bookmark_type, notice: "Bookmark type was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmark_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmark_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_types/1 or /bookmark_types/1.json
  def destroy
    @bookmark_type.destroy
    respond_to do |format|
      format.html { redirect_to bookmark_types_url, notice: "Bookmark type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark_type
      @bookmark_type = BookmarkType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_type_params
      params.require(:bookmark_type).permit(:name)
    end
end

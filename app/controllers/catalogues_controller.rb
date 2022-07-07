require "csv"

class CataloguesController < ApplicationController
  before_action :set_catalogue, only: %i[ show update destroy ]

  # GET /catalogues
  # GET /catalogues.json
  def index
    @catalogues = Catalogue.filter(search_params).order("release_year ASC")
  end

  # GET /catalogues/1
  # GET /catalogues/1.json
  def show
  end

  # POST /catalogues
  # POST /catalogues.json
  def create
    begin
      @items = []
      @file = "./db/netflix_titles.csv"
      CSV.foreach(@file, headers: true) do |row|
        @items << row.to_h
      end

      @items.uniq!

      Catalogue.transaction do
        Catalogue.create(@items)
      end
      #render :show, status: :created, location: @catalogue
      render json: {"message": "Catalogue Saved in database"}, status: :created
    rescue
      render json: @catalogue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /catalogues/1
  # PATCH/PUT /catalogues/1.json
  def update
    if @catalogue.update(catalogue_params)
      render :show, status: :ok, location: @catalogue
    else
      render json: @catalogue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /catalogues/1
  # DELETE /catalogues/1.json
  def destroy
    @catalogue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogue
      @catalogue = Catalogue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catalogue_params
      params.require(:catalogue).permit(:show_id, :genre, :title, :director, :cast, :country, :date_added, :release_year, :rating, :duration, :listed_in, :description)
    end

    # Allow a list of params search passed to URL
    def search_params
      params.slice(:show_id, :genre, :title, :country, :date_added, :release_year, :description)
    end
end

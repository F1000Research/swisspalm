class FeatureTypesController < ApplicationController
  # GET /feature_types
  # GET /feature_types.json
  def index
    @feature_types = FeatureType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feature_types }
    end
  end

  # GET /feature_types/1
  # GET /feature_types/1.json
  def show
    @feature_type = FeatureType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feature_type }
    end
  end

  # GET /feature_types/new
  # GET /feature_types/new.json
  def new
    @feature_type = FeatureType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feature_type }
    end
  end

  # GET /feature_types/1/edit
  def edit
    @feature_type = FeatureType.find(params[:id])
  end

  # POST /feature_types
  # POST /feature_types.json
  def create
    @feature_type = FeatureType.new(params[:feature_type])

    respond_to do |format|
      if @feature_type.save
        format.html { redirect_to @feature_type, notice: 'Feature type was successfully created.' }
        format.json { render json: @feature_type, status: :created, location: @feature_type }
      else
        format.html { render action: "new" }
        format.json { render json: @feature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feature_types/1
  # PUT /feature_types/1.json
  def update
    @feature_type = FeatureType.find(params[:id])

    respond_to do |format|
      if @feature_type.update_attributes(params[:feature_type])
        format.html { redirect_to @feature_type, notice: 'Feature type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_types/1
  # DELETE /feature_types/1.json
  def destroy
    @feature_type = FeatureType.find(params[:id])
    @feature_type.destroy

    respond_to do |format|
      format.html { redirect_to feature_types_url }
      format.json { head :no_content }
    end
  end
end

class AnEntitiesController < ApplicationController
  # GET /an_entities
  # GET /an_entities.json
  def index
    @an_entities = AnEntity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @an_entities }
    end
  end

  # GET /an_entities/1
  # GET /an_entities/1.json
  def show
    @an_entity = AnEntity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @an_entity }
    end
  end

  # GET /an_entities/new
  # GET /an_entities/new.json
  def new
    @an_entity = AnEntity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @an_entity }
    end
  end

  # GET /an_entities/1/edit
  def edit
    @an_entity = AnEntity.find(params[:id])
  end

  # POST /an_entities
  # POST /an_entities.json
  def create
    @an_entity = AnEntity.new(params[:an_entity])

    respond_to do |format|
      if @an_entity.save
        format.html { redirect_to @an_entity, notice: 'An entity was successfully created.' }
        format.json { render json: @an_entity, status: :created, location: @an_entity }
      else
        format.html { render action: "new" }
        format.json { render json: @an_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /an_entities/1
  # PUT /an_entities/1.json
  def update
    @an_entity = AnEntity.find(params[:id])

    respond_to do |format|
      if @an_entity.update_attributes(params[:an_entity])
        format.html { redirect_to @an_entity, notice: 'An entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @an_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /an_entities/1
  # DELETE /an_entities/1.json
  def destroy
    @an_entity = AnEntity.find(params[:id])
    @an_entity.destroy

    respond_to do |format|
      format.html { redirect_to an_entities_url }
      format.json { head :no_content }
    end
  end
end

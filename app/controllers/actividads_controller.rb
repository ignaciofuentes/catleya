class ActividadsController < ApplicationController
  # GET /actividads
  # GET /actividads.xml
  def index
    @actividads = Actividad.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @actividads }
    end
  end

  # GET /actividads/1
  # GET /actividads/1.xml
  def show
    @actividad = Actividad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @actividad }
    end
  end

  # GET /actividads/new
  # GET /actividads/new.xml
  def new
    @actividad = Actividad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @actividad }
    end
  end

  # GET /actividads/1/edit
  def edit
    @actividad = Actividad.find(params[:id])
  end

  # POST /actividads
  # POST /actividads.xml
  def create
    @actividad = Actividad.new(params[:actividad])

    respond_to do |format|
      if @actividad.save
        flash[:notice] = 'Actividad was successfully created.'
        format.html { redirect_to(@actividad) }
        format.xml  { render :xml => @actividad, :status => :created, :location => @actividad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @actividad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /actividads/1
  # PUT /actividads/1.xml
  def update
    @actividad = Actividad.find(params[:id])

    respond_to do |format|
      if @actividad.update_attributes(params[:actividad])
        flash[:notice] = 'Actividad was successfully updated.'
        format.html { redirect_to(@actividad) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @actividad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /actividads/1
  # DELETE /actividads/1.xml
  def destroy
    @actividad = Actividad.find(params[:id])
    @actividad.destroy

    respond_to do |format|
      format.html { redirect_to(actividads_url) }
      format.xml  { head :ok }
    end
  end
end

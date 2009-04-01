class PersonaContactosController < ApplicationController
  # GET /persona_contactos
  # GET /persona_contactos.xml
  def index
    
    @relacion_persona = find_relacion_persona_contacto
    @persona_contactos = @relacion_persona.persona_contactos

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @persona_contactos }
    end
  end

  # GET /persona_contactos/1
  # GET /persona_contactos/1.xml
  def show
    @persona_contacto = PersonaContacto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @persona_contacto }
    end
  end

  # GET /persona_contactos/new
  # GET /persona_contactos/new.xml
  def new
    @relacion_persona = find_relacion_persona_contacto
    @persona_contacto = @relacion_persona.persona_contactos.build(params[:persona_contacto])
    #@persona_contacto = PersonaContacto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @persona_contacto }
    end
  end

  # GET /persona_contactos/1/edit
  def edit
    # @relacion_persona = find_relacion_persona_contacto
    # @persona_contacto = @relacion_persona.persona_contactos.build(params[:persona_contacto])
    @persona_contacto = PersonaContacto.find(params[:id])
  end

  # POST /persona_contactos
  # POST /persona_contactos.xml
  def create
    
    @relacion_persona = find_relacion_persona_contacto
    @persona_contacto = @relacion_persona.persona_contactos.build(params[:persona_contacto])

    respond_to do |format|
      if @persona_contacto.save
        flash[:notice] = 'PersonaContacto was successfully created.'
        format.html { redirect_to :proveedors }
        format.xml  { render :xml => @persona_contacto, :status => :created, :location => @persona_contacto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @persona_contacto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /persona_contactos/1
  # PUT /persona_contactos/1.xml
  def update
    @persona_contacto = PersonaContacto.find(params[:id])

    respond_to do |format|
      if @persona_contacto.update_attributes(params[:persona_contacto])
        flash[:notice] = 'PersonaContacto was successfully updated.'
        format.html { redirect_to(@persona_contacto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @persona_contacto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /persona_contactos/1
  # DELETE /persona_contactos/1.xml
  def destroy
    @persona_contacto = PersonaContacto.find(params[:id])
    @persona_contacto.destroy

    respond_to do |format|
      format.html { redirect_to(persona_contactos_url) }
      format.xml  { head :ok }
    end
  end
  
  def find_relacion_persona_contacto
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
  
  
end

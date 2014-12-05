class TipoElementosController < ApplicationController
  before_action :set_tipo_elemento, only: [:show, :edit, :update, :destroy]

  # GET /tipo_elementos
  # GET /tipo_elementos.json
  def index
    @tipo_elementos = TipoElemento.search(params[:search], params[:page])
  end

  # GET /tipo_elementos/1
  # GET /tipo_elementos/1.json
  def show
  end

  # GET /tipo_elementos/new
  def new
    @tipo_elemento = TipoElemento.new
    
  end

  # GET /tipo_elementos/1/edit
  def edit
  end

  # POST /tipo_elementos
  # POST /tipo_elementos.json
  def create
    @tipo_elemento = TipoElemento.new(tipo_elemento_params)

    respond_to do |format|
      if @tipo_elemento.save
        format.html { redirect_to @tipo_elemento, notice: 'Tipo elemento fue creado con exito.' }
        format.json { render :show, status: :created, location: @tipo_elemento }
      else
        format.html { render :new }
        format.json { render json: @tipo_elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_elementos/1
  # PATCH/PUT /tipo_elementos/1.json
  def update
    respond_to do |format|
      if @tipo_elemento.update(tipo_elemento_params)
        format.html { redirect_to @tipo_elemento, notice: 'Tipo elemento fue actualizado con exito.' }
        format.json { render :show, status: :ok, location: @tipo_elemento }
      else
        format.html { render :edit }
        format.json { render json: @tipo_elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_elementos/1
  # DELETE /tipo_elementos/1.json
  def destroy
    @tipo_elemento.destroy
    respond_to do |format|
      format.html { redirect_to tipo_elementos_url, notice: 'Tipo elemento fue eliminado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_elemento
      @tipo_elemento = TipoElemento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_elemento_params
      params.require(:tipo_elemento).permit(:nombre, :descripcion, :icono)
    end
end

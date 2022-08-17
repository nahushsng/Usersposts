class TemplateOnesController < ApplicationController
  before_action :set_template_one, only: %i[ show edit update destroy ]
  before_action :require_user
  layout 'quartz'
  def require_user
    redirect_to login_path unless current_user
  end
  # GET /template_ones or /template_ones.json
  def index
    @template_ones = TemplateOne.all
  end

  # GET /template_ones/1 or /template_ones/1.json
  def show
  end

  # GET /template_ones/new
  def new
    @template_one = TemplateOne.new
  end

  # GET /template_ones/1/edit
  def edit
  end

  # POST /template_ones or /template_ones.json
  def create
    @template_one = TemplateOne.new(template_one_params)

    respond_to do |format|
      if @template_one.save
        format.html { redirect_to template_one_url(@template_one), notice: "Template one was successfully created." }
        format.json { render :show, status: :created, location: @template_one }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @template_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_ones/1 or /template_ones/1.json
  def update
    respond_to do |format|
      if @template_one.update(template_one_params)
        format.html { redirect_to template_one_url(@template_one), notice: "Template one was successfully updated." }
        format.json { render :show, status: :ok, location: @template_one }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @template_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_ones/1 or /template_ones/1.json
  def destroy
    @template_one.destroy

    respond_to do |format|
      format.html { redirect_to template_ones_url, notice: "Template one was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_one
      @template_one = TemplateOne.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def template_one_params
      params.require(:template_one).permit(:string_input_1)
    end
end

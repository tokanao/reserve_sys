class EntriesController < ApplicationController
  before_action :set_entry, only: %i[show edit update destroy]

  # GET /entries
  def index
    @entries = Entry.all
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new(valid_params)
    # @entry.entry_details.build(course: Course.first)
    @entry.entry_details.build
    gon.entry_details = @entry.entry_details
    gon.amount = @entry.amount

    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  def create
    @entry = Entry.new(entry_params)
    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.js {}
      else
        format.html { render :new }
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
    gon.entry_details = @entry.entry_details
    gon.amount = @entry.amount
  end

  # Only allow a trusted parameter "white list" through.
  def entry_params
    params.require(:entry).permit(model_class.param_names, entry_details_attributes: (EntryDetail.param_names << '_destroy'))
  end

  def valid_params
    params.permit model_class.column_names
  end
end

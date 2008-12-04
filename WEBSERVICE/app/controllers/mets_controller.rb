class MetsController < ApplicationController
  def index
    @mets = Sip.find(:all)
  end

  def show
    @mets = Sip.find_by_id params[:id]
    @msg = 'wrong-id'
  end

  def create
    sip = Sip.new
    sip.metsmanifest = request.body.readlines.join
    @ok = sip.save
    @msg = 'save'
  end

  def destroy
    sip = Sip.find_by_id params[:id]
    if sip.blank?
      @msg = 'wrong-id'
      @ok = false
    else
      @msg = 'destroy'
      @ok = sip.destroy 
    end
  end
end

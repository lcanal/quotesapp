class Api::V1::QuoteController < ApplicationController
  include CableReady::Broadcaster
  def index
    respond_to do |format|
      format.json { render json: Quote.order(created_at: :desc).all }
    end
  end

  def create
    quote = Quote.create(content: params[:content], author_name: params[:author])
    respond_to do |format|
      format.json { render json: quote }
    end
  end

  def destroy
    Quote.find(params[:id]).destroy
    respond_to do |format|
      format.json { render json: params[:id] }
    end
  end
end

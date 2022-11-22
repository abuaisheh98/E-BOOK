class EbooksController < ApplicationController
  before_action :set_ebook, only: [:show, :edit, :update, :destroy]

  def index
    @ebooks = Ebook.book_name.excellent
  end

  def new
    @ebook = Ebook.new
  end

  def show
  end

  def create
    @ebook = Ebook.create(ebook_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @ebook.update(ebook_params)
    redirect_to ebooks_path
  end

  def destroy
    @ebook.destroy
    redirect_to root_path
  end

  private
  def set_ebook
    @ebook=Ebook.find(params[:id])
  end

  def ebook_params
    params.require(:ebook).permit(:book_name, :author_name, :description, :publish_year, :rate)
  end
end

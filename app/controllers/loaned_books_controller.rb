class LoanedBooksController < ApplicationController
  before_action :set_loaned_book, only: [:show, :edit, :update, :destroy]

  # GET /loaned_books
  # GET /loaned_books.json
  def index
    @loaned_books = LoanedBook.all
  end

  # GET /loaned_books/1
  # GET /loaned_books/1.json
  def show
  end

  # GET /loaned_books/new
  def new
    @loaned_book = LoanedBook.new
  end

  # GET /loaned_books/1/edit
  def edit
  end

  # POST /loaned_books
  # POST /loaned_books.json
  def create
    @loaned_book = LoanedBook.new(loaned_book_params)

    respond_to do |format|
      if @loaned_book.save
        format.html { redirect_to @loaned_book, notice: 'Loaned book was successfully created.' }
        format.json { render :show, status: :created, location: @loaned_book }
      else
        format.html { render :new }
        format.json { render json: @loaned_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loaned_books/1
  # PATCH/PUT /loaned_books/1.json
  def update
    respond_to do |format|
      if @loaned_book.update(loaned_book_params)
        format.html { redirect_to @loaned_book, notice: 'Loaned book was successfully updated.' }
        format.json { render :show, status: :ok, location: @loaned_book }
      else
        format.html { render :edit }
        format.json { render json: @loaned_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loaned_books/1
  # DELETE /loaned_books/1.json
  def destroy
    @loaned_book.destroy
    respond_to do |format|
      format.html { redirect_to loaned_books_url, notice: 'Loaned book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaned_book
      @loaned_book = LoanedBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loaned_book_params
      params.require(:loaned_book).permit(:book_id, :borrower_id, :due_date_time)
    end
end

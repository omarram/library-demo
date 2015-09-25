class CheckoutsController < ApplicationController
  def index
  end

  def check_out
    @params = params[:book]
    title = @params[:title]
    name = @params[:name]
    @book = Book.find_by_title(title)
    @borrower = Borrower.find_by_name(name)
    if @borrower == nil
      @note = 'This borrower is not listed.'
    elsif @book == nil
      @note = 'This book doesnt exist in the library.'
    elsif @book.on_loan == true
      @note = 'This book is already borrowed by someone else.'
    else
      @book.on_loan = true
      @book.save
      @books_loaned = LoanedBook.create(book_id: @book.id, borrower_id: @borrower.id)
      @books_loaned.save
      @note = 'The book was successfully checked out.'
    end
    respond_to do |format|
      format.html    
    end    
  end

  def check_in
    @params = params[:book]
    title = @params[:title]
    @book = Book.find_by_title(title)
    if @book != nil
      @book.on_loan = false
      @book.save
      @books_loaned = LoanedBook.find_by_book_id(@book.id)
      if @books_loaned != nil
        @books_loaned.destroy
        @note = 'The book was successfully checked in.'
      else
        @note = 'Error while trying to check in, possibly the borrowed book is already checked in.'
      end
    else
      @note = 'Book not found'
    end
    respond_to do |format|
      format.html
    end     
  end

  def borrow_list
    @books_loaned = LoanedBook.all
    if @books_loaned == nil
      @note = 'No books are borrowed!'
    else
      respond_to do |format|
        format.html
      end
    end
  end
end

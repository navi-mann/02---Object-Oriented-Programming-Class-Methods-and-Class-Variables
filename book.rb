class Book
  @@on_shelf = []
  @@on_loan = []

  def due_date
    @due_date
  end

  def due_date=(due_date)
    due_date = due_date
  end

  def initialize(book_title,author,isbn)
    @book_title = book_title
    @author = author
    @isbn = isbn
    @due_date = 0
  end

  def borrow
    if lent_out?
      puts "The attempt to borrow the book failed."
    else
      @due_date = Book.current_due_date
      puts "Your book will be due on #{@due_date}"
      @@on_loan << self
      @@on_shelf.delete(self)
    end
  end

  def return_to_library
    if lent_out?
      @@on_loan.delete(self)
      @@on_shelf << self
      @due_date = nil
      return true
    else
      return false
    end
  end

  def lent_out?
     @@on_loan.include?(self)
  end

  def self.create(x,y,z)
    new_book = Book.new(x,y,z)
    @@on_shelf << new_book
    return new_book
  end

  def self.current_due_date
  (Time.now + 445000)

  end

  def self.overdue_books
    past_due_books = []
    @@on_loan.each do |value|
      if value.due_date < Time.now
          past_due_books << value
      end
    end
    return past_due_books
  end

  def self.browse
    @@on_shelf.sample
  end

  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

  end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
# puts Book.browse.inspect
# puts Book.browse.inspect
# puts Book.browse.inspect
# puts Book.available.inspect
# puts Book.borrowed.inspect
puts sister_outsider.lent_out?
puts sister_outsider.borrow
puts sister_outsider.lent_out?
puts sister_outsider.borrow
puts sister_outsider.due_date
puts "-----available-----------"
puts Book.available.inspect
puts "-----borrowed-----------"
puts Book.borrowed.inspect
puts "-----overdue_books-----------"
puts Book.overdue_books.inspect
puts sister_outsider.return_to_library
puts sister_outsider.lent_out?
puts Book.available.inspect
puts Book.borrowed.inspect

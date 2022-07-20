.PHONY: all clean

BOOK1=Harry Potter and the Smart-Ass Stones
BOOK2=Harry Potter and the Chamber of Ratios
BOOK4=Harry Potter and the Chug Jug of Fiya
BOOK3=Harry potter and the Locked-up Dude

all: book_1.epub book_4.epub

book1: book_1.epub
book_1.epub: book_1/*.md
	pandoc book_1/*.md -o "book_1.epub" --metadata title="$(BOOK1)"

book4: book_4.epub
book_4.epub: book_4/*.md
	pandoc book_4/*.md -o "book_4.epub" --metadata title="$(BOOK4)"
	
book3: book_3.epub
book_3.epub: book_3/*.md
	pandoc book_3/*.md -o "book_3.epub" --metadata title="$(BOOK3)"
	
clean:
	rm -f *.epub

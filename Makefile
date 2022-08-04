.PHONY: all clean

BOOK1=Harry Potter and the Smart-Ass Stones
BOOK2=Harry Potter and the Chamber of Ratios
BOOK3=Harry Potter and the Locked-up Dude
BOOK4=Harry Potter and the Chug Jug of Fiya

all: book_1.epub book_2.epub book_4.epub

# Pandoc started saying it couldn't deduce the file type, so I added ".epub"

book1: book_1.epub
book_1.epub: book_1/*.md
	pandoc book_1/*.md -o "Harry Potter and the Smart-Ass Stones.epub" --metadata title="$(BOOK1)"

book2: book_2.epub
book_2.epub: book_2/*.md
	pandoc book_2/*.md -o "Harry Potter and the Chamber of Ratios.epub" --metadata title="$(BOOK2)"

book4: book_4.epub
book_4.epub: book_4/*.md
	pandoc book_4/*.md -o "Harry Potter and the Chug Jug of Fiya.epub" --metadata title="$(BOOK4)"

clean:
	rm -f *.epub

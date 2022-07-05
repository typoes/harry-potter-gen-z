.PHONY: all clean

BOOK1=Harry Potter and the Smart-Ass Stones
BOOK4=Harry Potter and the Chug Jug of Fiya

all: book_1.epub book_4.epub

book1: book_1.epub
book_1.epub: book_1/*.md
	pandoc book_1/*.md -o "book_1.epub" --metadata title="$(BOOK1)"

book4: book_4.epub
book_4.epub: book_4/*.md
	pandoc book_4/*.md -o "book_4.epub" --metadata title="$(BOOK4)"

clean:
	rm -f *.epub
BOOK4= harry potter and the big green joint

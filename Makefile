.PHONY: all clean
.SILENT: clean

BOOK1=Harry Potter and the Smart-Ass Stones
BOOK2=Harry Potter and the Chamber of Ratios
BOOK3=Harry Potter and the Locked-up Dude
BOOK4=Harry Potter and the Chug Jug of Fiya

all: book_1.epub book_2.epub book_4.epub

book1: book_1.epub
book_1.epub: book_1/*.md
	for %%f in (book_1/*.md) do pandoc book_1/%%f -o "build/$(BOOK1).epub" --metadata title="$(BOOK1)"

book2: book_2.epub
book_2.epub: book_2/*.md
	for %%f in (book_2/*.md) do pandoc book_2/%%f -o "build/$(BOOK2).epub" --metadata title="$(BOOK2)"

book4: book_4.epub
book_4.epub: book_4/*.md
	for %%f in (book_4/*.md) do pandoc book_4/%%f -o "build/$(BOOK4).epub" --metadata title="$(BOOK4)"

clean:
	del /f /q build

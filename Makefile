all:
	mkdir -p build/usr/bin/ build/usr/share/man/man1/
	cp ./db build/usr/bin/
	gzip -9 -c db.1 > build/usr/share/man/man1/db.1.gz
	./db build/

clean:
	rm -rf build/
	rm -rf *.deb

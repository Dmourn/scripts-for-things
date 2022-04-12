
manpager:
	gcc -o $@ $@.c

clean:
	rm manpager

install: manpager
	install -m 0755 $^ /usr/local/bin

LIBDIR=.

install:
	gcc -Wall -I/opt/local/include/mysql5/mysql -I. -shared lib_mysqludf_sys.c -o $(LIBDIR)/lib_mysqludf_sys.so

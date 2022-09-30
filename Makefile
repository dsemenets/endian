
CFLAGS = -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast -lpthread -O2
ifneq ($(THREADS),)
    CFLAGS += -DTHREADS=$(THREADS)
endif
ifneq ($(ATOMIC),)
    CFLAGS += -DUSE_ATOMIC
endif
all: endian
	$(CC) --version

endian: endian.c
	$(CC) $< $(CFLAGS) -o $@

clean:
	-rm endian

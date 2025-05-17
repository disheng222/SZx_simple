# Compiler and flags
CC = gcc
CFLAGS = -Wall -g -I.

# ---- Compression ----
COMPRESS_SRCS = szx_compress.c utility.c compress_main.c
COMPRESS_OBJS = $(COMPRESS_SRCS:.c=.o)
COMPRESS_BIN = szx_compress

# ---- Decompression (not yet implemented) ----
DECOMPRESS_SRCS = szx_decompress.c utility.c decompress_main.c
DECOMPRESS_OBJS = $(DECOMPRESS_SRCS:.c=.o)
DECOMPRESS_BIN = szx_decompress

# Default target builds only compression for now
all: $(COMPRESS_BIN) $(DECOMPRESS_BIN)

# Build compression binary
$(COMPRESS_BIN): $(COMPRESS_OBJS)
	$(CC) $(CFLAGS) -o $@ $(COMPRESS_OBJS)

# Build decompression binary (disabled for now)
$(DECOMPRESS_BIN): $(DECOMPRESS_OBJS)
	$(CC) $(CFLAGS) -o $@ $(DECOMPRESS_OBJS)

# Generic rule for compiling .c to .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f *.o $(COMPRESS_BIN) $(DECOMPRESS_BIN)

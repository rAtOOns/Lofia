override CFLAGS+=-Wall -Wextra -O2 -Isrc
override LDFLAGS+=-lcurl -lpcre -lpthread -lssh -ldl -lcrypto
SRC_DIR=src
OBJ_DIR=bin

OBJS =		$(OBJ_DIR)/lofia_common.o \
		$(OBJ_DIR)/lofia_mem.o \
		$(OBJ_DIR)/lofia_request.o \
		$(OBJ_DIR)/lofia_str.o \
		$(OBJ_DIR)/lofia_xpl.o \
		$(OBJ_DIR)/lofia_regex.o \
		$(OBJ_DIR)/lofia_socket.o \
		$(OBJ_DIR)/lofia_io.o \
		$(OBJ_DIR)/hexdump.o \
		$(OBJ_DIR)/lofia.o

lofia: $(OBJS)
	$(CC) -o lofia $(OBJS) $(LDFLAGS) $(CFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<


clean:
	rm -f $(OBJS) lofia

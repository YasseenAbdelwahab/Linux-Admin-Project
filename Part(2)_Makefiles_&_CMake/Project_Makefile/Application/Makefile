CC = gcc
OUT_FILES = output
APP_OUT_DIR = out
APP_LIB_DIR = libs
APP_OBJ_DIR = gen
MODULE_DIR = Modules
CAESAR_CIPHER_DIR = caesar_cipher
XOR_CIPHER_DIR = xor_cipher

DIRS = $(APP_OUT_DIR)/$(APP_LIB_DIR) $(APP_OUT_DIR)/$(APP_OBJ_DIR)


include ../$(MODULE_DIR)/$(CAESAR_CIPHER_DIR)/caesar_cipher.mk
include ../$(MODULE_DIR)/$(XOR_CIPHER_DIR)/xor_cipher.mk


CFLAGS = -I$(CAESAR_CIPHER_INC) -I$(XOR_CIPHER_INC) -Wall -g



.PHONY: all clean run caesar_cipher xor_cipher


all: $(DIRS) caesar_cipher xor_cipher $(OUT_FILES)


$(DIRS):
	mkdir -p $(APP_OUT_DIR)/$(APP_LIB_DIR) $(APP_OUT_DIR)/$(APP_OBJ_DIR)


$(OUT_FILES): $(APP_OUT_DIR)/$(APP_OBJ_DIR)/app.o $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB)
	$(CC) $(APP_OUT_DIR)/$(APP_OBJ_DIR)/app.o -L$(APP_OUT_DIR)/$(APP_LIB_DIR) -lcaesar -lxor -Wl,-rpath,$(APP_OUT_DIR)/$(APP_LIB_DIR) -o $(OUT_FILES)



$(APP_OUT_DIR)/$(APP_OBJ_DIR)/app.o: app.c | $(APP_OUT_DIR)/$(APP_OBJ_DIR)
	$(CC) -c app.c $(CFLAGS) -o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/app.o


clean:
	rm -rf $(APP_OUT_DIR) ./output


run:
	./output 3 K "aaa"

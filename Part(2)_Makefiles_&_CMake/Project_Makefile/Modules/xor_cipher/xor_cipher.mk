XOR_CIPHER_INC = ../$(MODULE_DIR)/$(XOR_CIPHER_DIR)/inc
XOR_CIPHER_SRC = ../$(MODULE_DIR)/$(XOR_CIPHER_DIR)/src
XOR_CIPHER_LIB = $(APP_OUT_DIR)/$(APP_LIB_DIR)/libxor.so
XOR_CIPHER_OBJ = $(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_encrypt.o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_decrypt.o

#If you want to compile the dynamic library only without compiling the whole program type make xor_cipher
xor_cipher: $(XOR_CIPHER_LIB)


$(XOR_CIPHER_LIB): $(XOR_CIPHER_OBJ) | $(APP_OUT_DIR)/$(APP_LIB_DIR)
	$(CC) -shared $(XOR_CIPHER_OBJ) -o $(XOR_CIPHER_LIB)


$(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_encrypt.o: $(XOR_CIPHER_SRC)/xor_encrypt.c | $(APP_OUT_DIR)/$(APP_OBJ_DIR)
	$(CC) -c $(XOR_CIPHER_SRC)/xor_encrypt.c -I$(XOR_CIPHER_INC) -Wall -g -fPIC -o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_encrypt.o


$(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_decrypt.o: $(XOR_CIPHER_SRC)/xor_decrypt.c | $(APP_OUT_DIR)/$(APP_OBJ_DIR)
	$(CC) -c $(XOR_CIPHER_SRC)/xor_decrypt.c -I$(XOR_CIPHER_INC) -Wall -g -fPIC -o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/xor_decrypt.o

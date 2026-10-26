CAESAR_CIPHER_INC = ../$(MODULE_DIR)/$(CAESAR_CIPHER_DIR)/inc
CAESAR_CIPHER_SRC = ../$(MODULE_DIR)/$(CAESAR_CIPHER_DIR)/src
CAESAR_CIPHER_LIB = $(APP_OUT_DIR)/$(APP_LIB_DIR)/libcaesar.a
CAESAR_CIPHER_OBJ = $(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_encrypt.o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_decrypt.o

#If you want to compile the static library only without compiling the whole program type make caesar_cipher
caesar_cipher: $(CAESAR_CIPHER_LIB)


$(CAESAR_CIPHER_LIB): $(CAESAR_CIPHER_OBJ)
	ar -cr $(CAESAR_CIPHER_LIB) $(CAESAR_CIPHER_OBJ)


$(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_encrypt.o: $(CAESAR_CIPHER_SRC)/caesar_encrypt.c | $(APP_OUT_DIR)/$(APP_OBJ_DIR)
	$(CC) -c $(CAESAR_CIPHER_SRC)/caesar_encrypt.c -I$(CAESAR_CIPHER_INC) -Wall -g -o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_encrypt.o


$(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_decrypt.o: $(CAESAR_CIPHER_SRC)/caesar_decrypt.c | $(APP_OUT_DIR)/$(APP_OBJ_DIR)
	$(CC) -c $(CAESAR_CIPHER_SRC)/caesar_decrypt.c -I$(CAESAR_CIPHER_INC) -Wall -g -o $(APP_OUT_DIR)/$(APP_OBJ_DIR)/caesar_decrypt.o

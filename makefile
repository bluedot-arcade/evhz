CC = gcc
CFLAGS = -Wall -Wextra -O2

SRC = src/evhz.c
BUILD_DIR = build
TARGET = $(BUILD_DIR)/evhz
RUN_FILE_SRC = src/run
RUN_FILE_DEST = $(BUILD_DIR)/run

all: $(TARGET) $(RUN_FILE_DEST)

$(TARGET): $(SRC)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)
	@echo ""
	@echo "\033[0;32m[SUCCESS]\033[0m"
	@echo "Built target: $(TARGET)"
	@echo ""

$(RUN_FILE_DEST): $(RUN_FILE_SRC)
	@mkdir -p $(BUILD_DIR)
	@cp $(RUN_FILE_SRC) $(RUN_FILE_DEST)

clean:
	rm -f $(TARGET) $(RUN_FILE_DEST)
	rm -rf $(BUILD_DIR)

.PHONY: all clean
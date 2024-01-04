uImage: build
	gzip -9 -cvf $(OUT_BIN) > arceos-2k500.bin.gz
	mkimage -A loongarch -O linux -C gzip -T kernel -a 0x00200000 -e 0x00200000 -n arceos -d arceos-2k500.bin.gz uImage
	@echo 'Built the uImage for loongarch64-2k500'

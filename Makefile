# download https://github.com/mbuilov/gnumake-windows/blob/master/gnumake-4.2.1.exe
# and copy it to bin/ as 'make.exe'

ifeq ($(MSYSTEM),MSYS)
	CP = cp -f
	RM = rm -f
else
	ifeq ($(OS),Windows_NT)
		CP = COPY /Y
		RM = DEL /Q /S
	else
		CP = cp -f
		RM = rm -f
	endif
endif

all :
	@echo copy command is '$(CP)'
	
	$(MAKE) -C sample01
	$(MAKE) -C sample02
	$(MAKE) -C sample03
	$(MAKE) -C sample04
	$(MAKE) -C sample05

clean :
	$(MAKE) -C sample01 $@
	$(MAKE) -C sample02 $@
	$(MAKE) -C sample03 $@
	$(MAKE) -C sample04 $@
	$(MAKE) -C sample05 $@

.PHONY : \
	all

.EXPORT_ALL_VARIABLES :

TEXTS = data0.txt data1.txt data2.txt
LOGS  = $(TEXTS:.txt=.log)

all : help log

help :
	@echo   This is sample02.
	@echo   Copy *.txt to *.log

log : $(LOGS)

%.log : %.txt
	@$(CP) $< $@

clean :
	@echo   remove $(LOGS)
	@$(RM) /Q /S $(LOGS)
	
.PHONY : \
	all

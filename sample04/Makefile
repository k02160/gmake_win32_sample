TEXTS = $(wildcard *.txt)
LOGS  = $(TEXTS:.txt=.log)

all : help log

help :
	@echo   This is sample04.
	@echo   Copy *.txt to *.log using wildcard
	@echo   Text files are $(TEXTS)
	
log : $(LOGS)

%.log : %.txt
	@$(CP) $< $@

clean :
	@echo   remove $(LOGS)
	@$(RM) $(LOGS)
	
.PHONY : \
	all

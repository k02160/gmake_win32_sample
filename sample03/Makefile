INPUTDIR = input
OUTPUTDIR = output

TEXTS = $(INPUTDIR)\data0.txt $(INPUTDIR)\data1.txt $(INPUTDIR)\data2.txt
LOGS  = $(addprefix $(OUTPUTDIR)\, $(notdir $(TEXTS:.txt=.log)))

all : help log

help :
	@echo   This is sample03.
	@echo   Copy input\*.txt to output\*.log
	@echo   Text files are $(TEXTS)
	@echo   You MUST separate target path with '\\'!
	
log : $(LOGS)

$(OUTPUTDIR)\\%.log : $(INPUTDIR)\%.txt
	@$(CP) $< $@

clean :
	@echo   remove $(LOGS)
	@$(RM) $(LOGS)
	
.PHONY : \
	all

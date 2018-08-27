INPUTDIR = input
OUTPUTDIR = output

TEXTS = $(wildcard $(INPUTDIR)/*.txt)
LOGS  = $(addprefix $(OUTPUTDIR)\, $(notdir $(TEXTS:.txt=.log)))

all : help log

help :
	@echo   This is sample05.
	@echo   Get files using wildcard.
	@echo   You MUST separate argument of 'wildcard' with '/'!

log : $(LOGS)

$(OUTPUTDIR)\\%.log : $(INPUTDIR)\%.txt
	@echo copy $< to $@
	@$(CP) $< $@

clean :
	@echo   remove $(LOGS)
	@$(RM) $(LOGS)
	
.PHONY : \
	all

DATE=$(shell date +%I:%M%p)
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

all:
	@echo "${HR}"
	@echo "Build separately."
	sh ./tools/build_separate.sh
	
	@echo "Building Mob..."
	sh ./tools/build.sh
	
	@echo "Mob successfully built at ${DATE}."
	@echo "${HR}"

clean:
	echo "${HR}"
	echo "Cleaning Mob development environment..."
	@rm -rf .build;

dev:
	@./tools/dev.sh

love:
	@./tools/dev.sh
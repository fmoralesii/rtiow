# Various flags
GPP=g++
DEBUG=-ggdb
CPPFLAGS=-Wall -Wpedantic -std=c++17

# Targets
all:
	@echo ""
	@echo "Building bin/rtiow (RELEASE)"
	@ $(GPP) -o bin/rtiow src/rtiow.cpp src/vec3.cpp src/sphere.cpp src/hitable_list.cpp $(CPPFLAGS)
	@echo ""

debug: 
	@echo ""
	@echo "Building bin/rtiow (DEBUG)"
	@ $(GPP) -o bin/rtiow src/rtiow.cpp src/vec3.cpp src/sphere.cpp src/hitable_list.cpp $(CPPFLAGS) $(DEBUG)
	@echo ""

clean:
	@echo ""
	@echo "Removing bin/rtiow"
	@rm bin/rtiow
	@echo ""
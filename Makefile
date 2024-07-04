CFLAGS = -std=c++17 -I. -I$(VULKAN_SDK)/include -I$(GLFW3_PATH)/include
LDFLAGS = -L$(GLFW3_PATH)/lib-mingw-w64 -L$(VULKAN_SDK)/lib -lglfw3 -lgdi32 -lstdc++ -lvulkan-1 

a.out: src/main.cpp
	g++ $(CFLAGS) -o build/a.exe src/main.cpp $(LDFLAGS)

.PHONY: test clean
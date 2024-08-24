.DEFAULT_GOAL=main

main: ./include/GLFW/glfw3.h build/glad.o ./include/glad/glad.h
	clang -I ./include/ -L ./lib/ -lglfw3 -framework Cocoa -framework OpenGL -framework IOKit ./main.c ./build/glad.o -o ./build/main

build/glad.o: ./include/glad/glad.h
	clang -c -arch arm64 -I ./include/ glad.c -o build/glad.o

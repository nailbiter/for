/* Alphar: 2020.03.08 */

#include <stdio.h>
#include <SDL.h> // Using SDL
#include <SDL2_gfxPrimitives.h> // Using SDL2_gfx


//Screen dimension constants
const int WIDTH = 640;
const int HEIGHT = 480;

// When using SDL, you have to use "int main(int argc, char* args[])"
// int main() and void main() are not allowed
int main(int argc, char* args[])
{
	// The window we'll be rendering to
	SDL_Window* window = NULL;
	
	// The renderer contained by the window
	SDL_Renderer *renderer = NULL;

	// Initialize SDL
	// https://wiki.libsdl.org/CategoryInit
	// https://wiki.libsdl.org/SDL_Init?highlight=%28%5CbCategoryInit%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	if (SDL_Init(SDL_INIT_VIDEO) != 0) 
	{		
		// Error Handling
		// https://wiki.libsdl.org/CategoryError
		printf("SDL_Init failed: %s\n", SDL_GetError());
		return 1;
	}

	// Create window
	// https://wiki.libsdl.org/CategoryVideo
	// https://wiki.libsdl.org/SDL_CreateWindow?highlight=%28%5CbCategoryVideo%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	// SDL_WINDOWPOS_UNDEFINED: Used to indicate that you don't care what the window position is.
	window = SDL_CreateWindow("OOP SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT, SDL_WINDOW_SHOWN);
	if (window == NULL) 
	{
		printf("SDL_CreateWindow failed: %s\n", SDL_GetError());
		SDL_Quit();
		return 2;
	}
	
	// Create renderer
	// https://wiki.libsdl.org/SDL_CreateRenderer?highlight=%28%5CbCategoryRender%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
	if (renderer == NULL)
	{
		SDL_DestroyWindow(window);
		printf("SDL_CreateRenderer failed: %s\n", SDL_GetError());
		SDL_Quit();
		return 3;
	}

	// Set the color used for drawing operations (Rect, Line and Clear).
	// https://wiki.libsdl.org/SDL_SetRenderDrawColor?highlight=%28%5CbCategoryRender%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	SDL_SetRenderDrawColor(renderer, 0, 0, 0xFF, 0xFF);
	
	// Clear the entire screen to our selected color.
	// https://wiki.libsdl.org/SDL_RenderClear?highlight=%28%5CbCategoryRender%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	SDL_RenderClear(renderer);
	
	// Draw a thick line with alpha blending.
	// https://www.ferzkopp.net/Software/SDL2_gfx/Docs/html/_s_d_l2__gfx_primitives_8c.html#a65c3119156482e660d4f4a3e084eb2ab
	thickLineColor(renderer, 0, 0, WIDTH, HEIGHT, 10, 0xFF00FFFF);
	thickLineColor(renderer, 0, HEIGHT, WIDTH, 0, 20, 0xFF0000FF);
		
	//Update screen
	// https://wiki.libsdl.org/SDL_RenderPresent?highlight=%28%5CbCategoryRender%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	SDL_RenderPresent(renderer);
		
	// Wait 10 seconds
	SDL_Delay(30000);
		
	
	// Destroy renderer
	// https://wiki.libsdl.org/SDL_DestroyRenderer
	SDL_DestroyRenderer(renderer);

	// Destroy window
	// https://wiki.libsdl.org/SDL_DestroyWindow
	SDL_DestroyWindow(window);

	// Quit SDL subsystems
	// https://wiki.libsdl.org/SDL_Quit?highlight=%28%5CbCategoryInit%5Cb%29%7C%28CategoryEnum%29%7C%28CategoryStruct%29
	SDL_Quit();

	return 0;
}


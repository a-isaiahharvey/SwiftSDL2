#ifdef __APPLE__
    #include <SDL2/SDL.h>
#elif defined(_WIN32) || defined(_WIN64)
    #include <SDL.h>
#else
    #include <SDL2/SDL.h>
#endif
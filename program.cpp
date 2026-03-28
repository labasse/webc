#include <emscripten/emscripten.h>

int getSampleDelay() {
    return 1000;
}

extern "C" {
    int greetings(const char *msg) { 
        // Use js code
        EM_ASM(
            Module.sampleGreetings1 = "Hello " + $0 + " !!!", 
            msg // With C data
        ); 
        return getSampleDelay(); // Can call C functions
    }
    void greetingsAsync(const char *msg, int delay) { 
        emscripten_sleep(ms); // Makes the method async
        EM_ASM(Module.sampleGreetings2 = `Hello ${$0} !!!`, msg);
    }
}

Date: October 12, 2014
Title: Technical Details

After doing much research, I've decided on technologies that will be used in Sub-Terra.

```
Language		: C++
Graphics		: OpenGL
Windowing		: SDL 2
Mathematics		: GLM
Audio			: SDL_mixer or PortAudio
```

C++ and OpenGL were pretty much a given and I already wanted to use SDL 2 and GLM, having used both extensively in the past. Audio was the only real uncertainty, and required a lot of research for me to come to a decision. I would have liked to use a library such as FMOD or BASS, but both of these have a hefty commercial license fee associated with them. In addition, FMOD Ex (the API that would be used in a game) does not allow any usage whatsoever without a commercial license.

SDL_mixer has the ability to mix unlimited channels of concurrent sound together and has an API similar in style to that of SDL itself. PortAudio is a more barebones library, simply allowing you to set an audio callback function. SDL_mixer seems like the best choice at this point, although, having previous experience with PortAudio, this would be a suitable fallback option if SDL_mixer does not meet the game's requirements.

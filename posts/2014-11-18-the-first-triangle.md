Date: November 18, 2014
Title: The First Triangle

A lot has happened over the last week or so and I'm going to try and cover everything in this blog entry. If you don't care about the technical stuff, just take a look at the screenshot below.

[![The First Triangle](http://i.imgur.com/6WwESqW.png "The First Triangle")](http://i.imgur.com/6WwESqW.png)

In graphics programming, one of the first things you're taught is how to draw your first triangle. As such, I decided to make this my first milestone.

The first thing to do was to set up a basic skeleton for the game engine. I've chosen to create a entity component system whereby the engine has a bunch of objects--each with a bunch of components (PositionComponent, ModelComponent, etc)--and a bunch of systems that can operate on the objects and their components.

Before I got into components and all that, I wanted to implement two systems that are crucial to a solid engine foundation; the job manager and the event manager. I spent a day or two creating the engine base, after which I spent the next few days writing a **multithreaded** job manager that creates as many threads as can be run simultaneously on the hardware and allows me to schedule jobs to be run asynchronously.

```cpp
jobManager->Do(someFunction);
jobManager->Do(someFunction, JobPriority::Low);
jobManager->Do(someFunction, JobPriority::High, JobThread::Main);
jobManager->Do(someFunction, JobPriority::Normal, JobThread::Worker);
```

The other thing I wanted was cross-system communication in the form of messages, allowing me to keep all the engine systems decoupled from each other but still be able to communicate. This took me a couple of days to implement.

#### Renderer
```cpp
eventManager->ListenFor("bgcolor", [] (Arg arg) {
	/* set background color here */
});
```

#### Another System
```cpp
/* implicit conversion from Color to Arg happens here */
eventManager->Fire("bgcolor", Color::Red);
```

By this point, I had an OpenGL 3.2 Renderer class just waiting for something to draw, so I did something along the lines of this:

```cpp
for(auto object : object) {
	if(object->HasComponent<ModelComponent>()) {
		auto model = object->GetComponent<ModelComponent>();
		/* draw model representation in OpenGL */
	}
}
```

From here, it was ridiculously easy to create an object with a model component of a triangle and add it to the engine.

```cpp
obj->AddComponent<ModelComponent>(std::initializer_list<Triangle>{
	std::make_tuple(Point(0, 0, 0, 1), Point(1, 0, 0, 1), Point(0, 1, 0, 1))
});
```

And voila, a triangle!

Right now, I'm drawing stuff in OpenGL compatibility profile. The next step is to set up everything needed to draw in core profile, after which I'll also be adding components for position, rotation, scale, etc.

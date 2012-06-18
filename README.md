X-Ruby-Bindings (Xrb)
===

Ruby bindings for X11 based off the XCB protocol definition
XML files. A large portion of the code used in the bindings
is auto-generated.

These bindings are very incomplete. I've been filling in
pieces as I need them, currently working on getting the
Julia example working from the XCB demos.


Currently Broken
===
 - The PolyText methods are not working (draw\_text).
 - The ImageText methods are not working (draw\_image_text).
 - The GetImage/PutImage do not work.

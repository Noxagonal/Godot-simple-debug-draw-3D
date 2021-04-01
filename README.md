# Simple debug draw 3D for Godot engine

This addon adds an easy to use debug drawing to 3D scenes.

------

## Installation
- Download the [addons/SimpleDebugDraw3D](addons/SimpleDebugDraw3D) folder to your project addons folder.
- Enable the addon on Godot project settings.

------

## How to use
After enabling the addon you'll get a global singleton "SDD3D" and you can access it anywhere with
```
$"/root/SDD3D"
```
Drawing debug stuff is not permanent and if you wish to view debug information on screen you'll have to re-draw it each frame (eg. in _process() function).

See Main.tscn for examples.

### Drawing points
Draws an "X" at the specific 3D coordinates.
```
$"/root/SDD3D".draw_point(
    coord3d_in_global_space,
    line_width_in_pixels, # (optional, default 3.0)
    color # (optional, default Color.magenta)
)
```

### Drawing vectors
Draws a line with an arrow at the end.
```
$"/root/SDD3D".draw_vector(
    start_coord3d_in_global_space,
    end_coord3d_in_global_space,
    line_width_in_pixels, # (optional, default 3.0)
    color # (optional, default Color.magenta)
)
```

### Drawing paths
Draws a path using lines between coordinates and circles at each coordinate.
```
$"/root/SDD3D".draw_path(
    path_array_of_coord3ds_in_global_space, # type:PoolVector3Array
    line_width_in_pixels, # (optional, default 3.0)
    start_color # (optional, default Color.green)
    end_color # (optional, default Color.red)
)
```

### Drawing text
Draws a text at 3D coordinate using default font.
```
$"/root/SDD3D".draw_text(
    coord3d_in_global_space,
    text_string, # type:String
    color # (optional, default Color.magenta)
)
```

------

## License
Copyright (c) 2021 Niko Kauppi (Noxagonal) Noxagonal@gmail.com

This software is licensed under [MIT license](LICENSE.md)

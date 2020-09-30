# rts-debug

The purpose of this repo is to demonstrate a bug related to drawing in render target Viewports.

## Specs
Godot 3.2.2.stable.official  
Windows 10  
Radeon 7870  
Ryzen 7 1700X  

## Bug

I'm trying to draw shapes in a render target Viewport with clear mode "Never". I'm trying to draw a rectangle once, and a circle every update. The problem is that the rectangle disappears if I draw the circle every update.

## What I get

![drawing both](https://i.imgur.com/eaJGEj2.png)

## Expected

![drawing both](https://i.imgur.com/PELRr8d.png)

# rts-debug

The purpose of this repo is to demonstrate a bug related to drawing in render target Viewports.

## Bug

It seems that whatever is drawn in Viewport *immediately* after the game starts is somehow lost if you continue drawing in \_process. To demonstrate, use the Game node's properties **will_draw_rect_once** and **will_draw_circle**. If you default them both to true, the rectangle is drawn once at the start, and the circle is drawn forever. However, the rectangle seems to disappear (or is never drawn in the first place). Upon defaulting **will_draw_circle** to false, you'll see that the rectangle is visible as expected.

![will_draw_circle defaulted to true](https://i.imgur.com/eaJGEj2.png)

![will_draw_circle defaulted to false](https://i.imgur.com/RC6ZwBi.png)

*Note: you can left/right click to set the properties to true for testing*

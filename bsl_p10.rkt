;
; PROBLEM:
; 
; Write an expression that uses triangle, overlay, and rotate to produce an image with 2 triangles.
;
; You can consult the DrRacket help desk for information on how to use triangle and overlay.
; Don't worry about the exact size of the triangles.
; 

(require 2htdp/image)

(overlay (triangle 50 "solid" "green")
         (rotate 180 (triangle 50 "solid" "yellow")))


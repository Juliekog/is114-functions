fun yin-yang(radius, farge1, farge2) -> Image:
  circle-50-outline-farge1 = circle(radius, "outline", farge1)
  circle-50-solid-farge2 = circle(radius, "solid", farge2)
  circle-50-solid-farge1 = circle(radius, "solid", farge1)
  half-circle-50-farge1 = crop(radius, 0, 2 * radius, 2 * radius, circle-50-solid-farge1)
  circle-25-solid-white = circle(radius / 2, "solid", farge2)
  circle-8-solid-black = circle(radius * 0.16, "solid", farge1) #0.16 = 8/50
  circle-25-solid-black = circle(radius / 2, "solid", farge1)
  circle-8-solid-white = circle(radius * 0.16, "solid", farge2)
  combine-outline-with-circle = overlay-align("pinhole", "middle", circle-50-outline-farge1, circle-50-solid-farge2)
  combine-outline-with-circle-with-half-circle = overlay-align("pinhole", "middle", half-circle-50-farge1, combine-outline-with-circle)
  combine-circle-25-black-with-circle-8-white = overlay-align("pinhole", "middle", circle-8-solid-white, circle-25-solid-black)
  combine-circle-25-white-with-circle-8-black = overlay-align("pinhole", "middle", circle-8-solid-black, circle-25-solid-white)
  combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle = overlay-align("pinhole", "top", combine-circle-25-white-with-circle-8-black, combine-outline-with-circle-with-half-circle)
  overlay-align("pinhole", "bottom", combine-circle-25-black-with-circle-8-white, combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle)
end


fun draw-yin-yang() -> Image:
  circle-50-outline-black = circle(50, "outline", "black")
  circle-50-solid-white = circle(50, "solid", "white")
  circle-50-solid-black = circle(50, "solid", "black")
  half-circle-50-black = crop(50, 0, 100, 100, circle-50-solid-black)
  circle-25-solid-white = circle(25, "solid", "white")
  circle-8-solid-black = circle(8, "solid", "black")
    circle-25-solid-black = circle(25, "solid", "black")
    circle-8-solid-white = circle(8, "solid", "white")
  combine-outline-with-circle = overlay-align("pinhole", "middle", circle-50-outline-black, circle-50-solid-white)
  combine-outline-with-circle-with-half-circle = overlay-align("pinhole", "middle", half-circle-50-black, combine-outline-with-circle)
  combine-circle-25-black-with-circle-8-white = overlay-align("pinhole", "middle", circle-8-solid-white, circle-25-solid-black)
  combine-circle-25-white-with-circle-8-black = overlay-align("pinhole", "middle", circle-8-solid-black, circle-25-solid-white)
  combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle = overlay-align("pinhole", "top", combine-circle-25-white-with-circle-8-black, combine-outline-with-circle-with-half-circle)
  overlay-align("pinhole", "bottom", combine-circle-25-black-with-circle-8-white, combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle)
end
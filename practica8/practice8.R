---
	title: "Interactive HTML"
author: "Mairim"
format:
	html:
	toc: true
toc-float: true
toc-depth: 3
code-fold: true

editor_options: 
	chunk_output_type: console

knitr:
	opts_chunk:
	echo: true
message: false
warning: false
comment: "#>"
---
	
	# Interactive graphs with plotly
	
	```{r}
library(ggplot2)
theme_set(theme_light())
library(plotly)
```


```{r}
p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
	geom_point()
ggplotly(p, tooltip = c("colour"))
```


# Interactive map

<https://quarto.org/docs/interactive/widgets/htmlwidgets.html>
	
	```{r}
library(leaflet)
```

```{r}
COORDINATES <- data.frame(lat = c(38.59, 38.5563, 38.574, 38.5393),
													lon = c(-76.13, -76.4147, -76.069, -76.0304),
													name = c("Horn Point Laboratory Oyster Hatchery",
																	 "Goose's Reef buoy",
																	 "Station CAMM2 - 8571892 - Cambridge, MD",
																	 "Cambridge airport"),
													type = c("Hatchery", rep("Station", 3)))
pal <- colorFactor(c("red", "navy"), domain = c("Hatchery", "Station"))
```


```{r}
leaflet(COORDINATES) %>%
	addTiles() %>%
	setView(lng = COORDINATES$lon[1], lat = COORDINATES$lat[1], zoom = 9) %>%
	addCircleMarkers(~lon, ~lat, popup = ~name, 
									 radius = 6,
									 stroke = FALSE, fillOpacity = 0.5,
									 color = ~pal(type)
	)
```

Here we define function $\Phi (x)$:
	$$
	\Phi (x) = \frac{1}{\sqrt{2 \pi}} \int^x_{-\infty} e^{-t^2/2} dt,
$$ {#eq-normal}
	where $\pi \approx$ `r round(pi, 3)` is the constant.
	
	See our @eq-normal.
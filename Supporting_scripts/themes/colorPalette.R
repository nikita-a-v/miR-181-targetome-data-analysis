nice_colors = list(
    bright_up_down = c("#68b1a5", "#874C62"),
    dark_up_down = c("#2b544d", "#623747"),
    
    bright_up_down_not = c("#999999", "#68b1a5", "#874C62"),
    dark_up_down_not = c("#4d4d4d", "#2b544d", "#623747")
)


nice_palettes = function(name, n, all_palettes = nice_colors, type = c("discrete", "continous")) {
    palette = all_palettes[[name]]
    if (missing(n)) {
        n = length(palette)
    }
    type = match.arg(type)
    out = switch(type,
                 continuous = grDevices::colorRampPalette(palette)(n),
                 discrete = palette[1:n]
    )
    structure(out, name = name, class = "palette")
}

# ggplot functions for color
scale_colour_nice_ud_b <- function(type = "discrete") {
    ggplot2::scale_colour_manual(values = nice_palettes("bright_up_down", type = type))
}
scale_colour_nice_ud_d <- function(type = "discrete") {
    ggplot2::scale_colour_manual(values = nice_palettes("dark_up_down", type = type))
}

scale_colour_nice_udn_b <- function(type = "discrete") {
    ggplot2::scale_colour_manual(values = nice_palettes("bright_up_down_not", type = type))
}
scale_colour_nice_udn_d <- function(type = "discrete") {
    ggplot2::scale_colour_manual(values = nice_palettes("dark_up_down_not", type = type))
}

# fix spelling
scale_color_nice_ud_b = scale_colour_nice_ud_b
scale_color_nice_ud_d = scale_colour_nice_ud_d
scale_color_nice_udn_b = scale_colour_nice_udn_b
scale_color_nice_udn_d = scale_colour_nice_udn_d


# ggplot functions for fill
scale_fill_nice_ud_b <- function(type = "discrete") {
    ggplot2::scale_fill_manual(values = nice_palettes("bright_up_down", type = type))
}
scale_fill_nice_ud_d <- function(type = "discrete") {
    ggplot2::scale_fill_manual(values = nice_palettes("dark_up_down", type = type))
}

scale_fill_nice_udn_b <- function(type = "discrete") {
    ggplot2::scale_fill_manual(values = nice_palettes("bright_up_down_not", type = type))
}
scale_fill_nice_udn_d <- function(type = "discrete") {
    ggplot2::scale_fill_manual(values = nice_palettes("dark_up_down_not", type = type))
}


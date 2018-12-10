pkgname <- "measurements"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "measurements-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('measurements')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("conv_dim")
### * conv_dim

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: conv_dim
### Title: Convert Dimensions of Measurement
### Aliases: conv_dim

### ** Examples

# How many minutes does it take to travel 100 meters at 3 feet per second?
conv_dim(x = 100, x_unit = "m", trans = 3, trans_unit = "ft_per_sec", y_unit = "min")

# How many degrees does the temperature increase with an increase in 4 kPa given 0.8 Celcius
# increase per psi?
conv_dim(x_unit = "C", trans = 0.8, trans_unit = "C_per_psi", y = 4, y_unit = "kPa")

# Find the densities given volume and mass measurements.
conv_dim(x = c(60, 80), x_unit = "ft3", trans_unit = "kg_per_l", y = c(6e6, 4e6), y_unit = "g")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("conv_dim", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("conv_multiunit")
### * conv_multiunit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: conv_multiunit
### Title: Convert Units of Measurement Composed of Multiple Units
### Aliases: conv_multiunit

### ** Examples

conv_multiunit(x = 10, from = "ft / hr * F", to = "m / min * C")
conv_multiunit(x = 1:100, from = "gal_per_min * ft / psi * hp", to = "l_per_hr * km / kPa * kW")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("conv_multiunit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("conv_unit")
### * conv_unit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: conv_unit
### Title: Convert Units of Measurement
### Aliases: conv_unit

### ** Examples

conv_unit(2.54, "cm", "inch") # Result = 1 inch

conv_unit(seq(1, 10), "kg", "short_ton") # A vector of measurement values can be converted

# Convert 1, 10, and 100 meters to all other length units
sapply(conv_unit_options$length, function(x) conv_unit(c(1, 10, 100), "m", x))

conv_unit("33 1 1", "deg_min_sec", "dec_deg")

conv_unit(c("101 44.32","3 19.453"), "deg_dec_min", "deg_min_sec")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("conv_unit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("conv_unit_options")
### * conv_unit_options

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: conv_unit_options
### Title: Unit of Measurement Conversion Options
### Aliases: conv_unit_options
### Keywords: datasets

### ** Examples

conv_unit_options
conv_unit_options$pressure




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("conv_unit_options", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')

# R/helpers.R

# Format p-values for inline reporting and tables
# table = FALSE: "= .043" or "< .001" (for inline reporting)
# table = TRUE:  ".043" or "< .001"   (for tables)
fmt_p <- function(p, apa = TRUE, table = FALSE) {
  formatted <- case_when(
    p < .001 ~ paste0("< .", paste(rep(0, digits - 1), collapse = ""), "1"),
    p < .01       ~ "< .01",
    p < .05       ~ "< .05",
    TRUE          ~ paste0("= ", formatC(p, digits = digits, format = "f"))
  )
  formatted <- if (apa) sub("= 0\\.", "= .", formatted) else formatted
  if (table) str_remove(formatted, "^= ") else formatted
}

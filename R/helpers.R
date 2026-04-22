# R/helpers.R

# Format p-values for inline reporting and tables
# table = FALSE: "= .043" or "< .001" (for inline reporting)
# table = TRUE:  ".043" or "< .001"   (for tables)
fmt_p <- function(p, digits = 3, apa = TRUE, table = FALSE) {
  threshold <- 10^(-digits)
  formatted <- ifelse(
    p < threshold,
    paste0("< .", paste(rep(0, digits - 1), collapse = ""), "1"),
    paste0("= ", formatC(p, digits = digits, format = "f"))
  )
  formatted <- if (apa) sub("= 0\\.", "= .", formatted) else formatted
  if (table) str_remove(formatted, "^= ") else formatted
}
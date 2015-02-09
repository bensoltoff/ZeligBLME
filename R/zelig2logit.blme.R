#' Interface between the Zelig Model logit.blme and 
#' the Pre-existing Model-fitting Method
#' @param formula a formula
#' @param ... additonal parameters
#' @param data a data.frame 
#' @return a list specifying '.function'
#' @export
zelig2logit.blme <- function (formula, ..., data) {
  formula <- tolmerFormat(reduceMI(formula))
  
  list(
    .function = "bglmer",
    formula = (formula),
    family = binomial,
    data = data,
    ...
  )
}

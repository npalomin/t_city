# H3-R Notes

#2022-08-01 - Update to R script following error in importing h3-r package. Added 'install.packages("h3")' to line 35.
#Reference: https://github.com/crazycapivara/h3-r

#2022-08-01 - Error
> # apply function to all elements in POLYGON list
> lapply(polslisthex, hexstatspol) -> polstats
Error in `mutate()`:
! Problem while computing `total_dim = rowSums(select(.,
  starts_with(colnames(key)[2])))`.
Caused by error in `rowSums()`:
! 'x' must be numeric
Backtrace:
 1. base::lapply(polslisthex, hexstatspol)
 9. base::rowSums(select(., starts_with(colnames(key)[2])))

#traceback message:
Error in mutate(., total_dim = rowSums(select(., starts_with(colnames(key)[2]))), : 

Caused by error in `rowSums()`:
! 'x' must be numeric
14. stop(fallback)
13. signal_abort(cnd, .file)
12. abort(bullets, class = "dplyr:::mutate_error", parent = skip_internal_condition(e), 
    bullets = bullets, call = error_call)
11. h(simpleError(msg, call))
10. .handleSimpleError(function (e) 
    {
    local_error_context(dots = dots, .index = i, mask = mask)
    bullets <- c(cnd_bullet_header("computing"), mutate_bullets(e)) ...
9.  rowSums(select(., starts_with(colnames(key)[2])))
8.  mask$eval_all_mutate(quo)
7.  withCallingHandlers({
    for (i in seq_along(dots)) {
    context_poke("column", old_current_column)
    quosures <- expand_across(dots[[i]]) ...
6.
    mutate_cols(.data, dplyr_quosures(...), caller_env = caller_env())
5.  mutate.data.frame(., total_dim = rowSums(select(., starts_with(colnames(key)[2]))), 
    diversity = rowSums(select(., starts_with(colnames(key)[2])) != 
    0))
4.  mutate(., total_dim = rowSums(select(., starts_with(colnames(key)[2]))), 
    diversity = rowSums(select(., starts_with(colnames(key)[2])) != 
    0))
3.  key %>% st_transform(4326) %>% mutate(hc_area = round(as.numeric(st_area(.)), 
    1)) %>% st_drop_geometry() %>% select(hexid, 2, hc_area) %>% 
    pivot_wider(names_from = 2, values_from = "hc_area", values_fn = sum, 
    values_fill = 0) %>% rename_with(~paste0(colnames(key)[2], ...
2.  FUN(X[[i]], ...)
1.  lapply(polslisthex, hexstatspol)
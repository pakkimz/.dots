local status_ok, trim = pcall(require, "trim")
if not status_ok then
  return
end

trim.setup {
  disable = {"text"},
  patterns = {
    [[%s/\s\+$//e]],
    [[%s/\($\n\s*\)\+\%$//]],
    [[%s/\%^\n\+//]],
    [[%s/\(\n\n\)\n\+/\1/]],
  }
}

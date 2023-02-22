require "../src/pipe"

pipe 1
  .>> {|x| x + 5}
  .>> {|x| x + 7}
  .>> {|x| puts(x)}

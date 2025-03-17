(command 
  name: (command_name (word) @awkcmd (#eq? @awkcmd "awk"))
  argument: ((raw_string) @injection.content
  (#match? @injection.content "{")
  (#set! injection.combined)
  (#set! injection.language "awk"))
)


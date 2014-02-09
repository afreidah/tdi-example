name "developer"
description "for development machines"
run_list "recipe[git]", "recipe[chruby::system]", "recipe[zsh]"

default_attributes(
  "chruby" => {
    "rubies" => {
      "1.9.3-p392" => false,
      "1.9.3-p484" => true,
      "2.0.0-p353" => true
    },
    "default" => "2.0.0-p353"
  }
)

labels_main = {
  namespace  = "rsr"
  stage      = "production"
  name       = "main"
  attributes = ["attr1", "attr2"]
  delimiter  = "-"

  tags = {
    "Name" = "Roger Steve Ruiz"
    "Date" = "2021-03-25T12:50:06"
  }
}

labels_aux = {
  namespace  = "rsr"
  stage      = "staging"
  name       = "aux"
  attributes = ["sub", "dub"]
  delimiter  = "_"

  tags = {
    "Name" = "Roger Steve Ruiz"
    "Date" = "2021-03-26T8:50:06"
  }
}



resource "random_pet" "name" {
  length = 3
}

resource "local_file" "demo_file" {
  content  = "Hello from Anoop P! Your random name is ${random_pet.name.id} \n I live in ${var.place}. I am in feature-2 branch.How are you?"
  filename = "${path.module}/demo.txt"
}

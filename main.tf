

resource "random_pet" "name" {
  length = 10
}

resource "local_file" "demo_file" {
  content  = "Hello from Anoop! Your random name is ${random_pet.name.id} \n I live in ${var.place}. I am in feature-3 branch again...How are you?   "
  filename = "${path.module}/demo.txt"
}

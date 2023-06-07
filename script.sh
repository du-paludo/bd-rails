rails generate scaffold Cliente cpf:string nome:string sobrenome:string
rails generate scaffold Endereco logradouro:string cep:string cliente:belongs_to
rails generate scaffold Pedido codigo:string cliente:belongs_to
rails generate scaffold Produto nome:string preco:float estoque:integer
rake db:migrate
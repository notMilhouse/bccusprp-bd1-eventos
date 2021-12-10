rodar `sudo docker-compose up` e show

conectar ao banco com datagrip ou qlqr outra coisa
usando as credenciais descritas no docker-compose.yml
rodar migrations na ordem:

1. define_eventos
2. init_usuarios
3. outros (menos o drop)


conexoes ao banco no codigo devem fazer referencia ao container do banco (alterar antes de subir pro cacto).


Next Steps:
- highlight da aba atual
- condensação de abas
- formato da data
- persistir o estado do banco fora do container em um dir `.volumes`
- rotas em variaveis para evitar repeticao e facilitar manutencao
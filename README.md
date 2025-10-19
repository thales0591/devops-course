# DevOps Challenge 02

## Requisitos

- Docker
- Docker Compose

## Configuração

### 1. Variáveis de Ambiente

Copie o arquivo de exemplo e configure as variáveis:

```bash
cp .env.example .env
```

Edite o `.env` com seus valores:

```env
# Application
PORT=3000
NODE_ENV=development

# Database
DATABASE_HOST=database
DATABASE_PORT=5432
DATABASE_NAME=devops
DATABASE_USER=admin
DATABASE_PASSWORD=admin
```

### 2. Executar os Containers

Build e iniciar os serviços:

```bash
docker-compose up --build
```

Executar em background:

```bash
docker-compose up -d
```

Parar os containers:

```bash
docker-compose down
```

### 3. Testar a Conexão

Testar a API:

```bash
curl http://localhost:3000
```

Testar conexão com o banco de dados:

```bash
docker exec -it devops-challenge-02-database-1 psql -U admin -d devops
```

Verificar logs da API:

```bash
docker-compose logs api
```

Verificar logs do database:

```bash
docker-compose logs database
```

## Estrutura do Projeto

```
.
├── src/
│   └── server.ts          # Servidor Fastify
├── Dockerfile             # Build da aplicação
├── docker-compose.yml     # Orquestração dos containers
├── .env.example           # Exemplo de variáveis de ambiente
└── README.md
```

## Serviços

- **API**: Aplicação Node.js rodando na porta 3000
- **Database**: PostgreSQL rodando na porta 5432

## Desenvolvimento

Instalar dependências:

```bash
pnpm install
```

Modo desenvolvimento (sem Docker):

```bash
pnpm run dev
```

Build local:

```bash
pnpm run build
```

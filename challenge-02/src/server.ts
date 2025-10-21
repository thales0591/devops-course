import { fastify } from "fastify";

export const app = fastify();

app.get("/", async (request, reply) => {
  return reply.send().status(200);
});

const PORT = Number(process.env.PORT) || 3000;
const HOST = process.env.HOST || "0.0.0.0";

app
  .listen({
    host: HOST,
    port: PORT,
  })
  .then(() => [console.log(`🚀 HTTP Server Running on ${HOST}:${PORT}!`)]);

import { fastify } from "fastify";

export const app = fastify();

app.get("/", async (request, reply) => {
  return reply.send().status(200);
});

app
  .listen({
    host: "0.0.0.0",
    port: 3333,
  })
  .then(() => [console.log("🚀 HTTP Server Running at 3333!")]);

const { PrismaClient } = require("@prisma/client");
const { ApolloServer } = require("apollo-server");
const { readFileSync } = require("fs");
const path = require("path");

const prisma = new PrismaClient();

const resolvers = {
  Query: {
    getAllBugs: async (parent, args, context) => {
      return context.prisma.bug.findMany();
    },
    getAllFish: async (parent, args, context) => {
      return context.prisma.fish.findMany();
    },
  },
};

const server = new ApolloServer({
  typeDefs: readFileSync(path.join(__dirname, "schema.graphql"), "utf-8"),
  resolvers,
  context: {
    prisma,
  },
});

server.listen().then(({ url }) => console.log(`Server is running on ${url}`));

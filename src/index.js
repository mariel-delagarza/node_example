const { PrismaClient } = require("@prisma/client");
const { ApolloServer } = require("apollo-server");
const { readFileSync } = require("fs");
const path = require("path");

const prisma = new PrismaClient();

/*const bugs = [
  {
    name: "Common Butterfly",
    location: "Flying",
    value: 160,
    time: "4 a.m. - 7 p.m.",
    monthsNorth: [
      "September",
      "October",
      "November",
      "December",
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
    ],
    monthsSouth: [
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ],
  },
];
*/

const resolvers = {
  Query: {
    getAllBugs: async (parent, args, context) => {
      return context.prisma.bug.findMany();
    },
  },
  Mutation: {
    addBug: async (parent, args, context) => {
      const bug = await context.prisma.bug.create({ data: { ...args } });
      return bug;
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

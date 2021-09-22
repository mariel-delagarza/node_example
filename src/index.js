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
    getBugByName: async (parent, args, context) => {
      return context.prisma.bug.findUnique({ where: { name: args.name } });
    },
    getFishByName: async (parent, args, context) => {
      return context.prisma.fish.findUnique({ where: { name: args.name } });
    },
    getBugsByMonthNorth: async (parent, args, context) => {
      const bugs = await context.prisma.bug.findMany({
        where: { monthsNorth: { has: args.month } },
      });
      console.log(bugs[0].name);

      return bugs;
    },
    getFishByMonthNorth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: { monthsNorth: { has: args.month } },
      });

      console.log(fish[0].name);

      return fish;
    },
    getBugsByMonthSouth: async (parent, args, context) => {
      const bugs = await context.prisma.bug.findMany({
        where: { monthsSouth: { has: args.month } },
      });
      console.log(bugs[0].name);

      return bugs;
    },
    getFishByMonthSouth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: { monthsSouth: { has: args.month } },
      });

      console.log(fish[0].name);

      return fish;
    },
    getBugsByAmHourMonthNorth: async (parent, args, context) => {
      const bug = await context.prisma.bug.findMany({
        where: {
          monthsNorth: { has: args.month },
          hoursAM: { has: args.hour },
        },
      });

      return bug;
    },
    getBugsByAmHourMonthSouth: async (parent, args, context) => {
      const bug = await context.prisma.bug.findMany({
        where: {
          monthsSouth: { has: args.month },
          hoursAM: { has: args.hour },
        },
      });

      return bug;
    },
    getFishByAmHourMonthNorth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: {
          monthsNorth: { has: args.month },
          hoursAM: { has: args.hour },
        },
      });

      return fish;
    },
    getFishByAmHourMonthSouth: async (parent, args, context) => {
      const fish = await context.prisma.bug.findMany({
        where: {
          monthsSouth: { has: args.month },
          hoursAM: { has: args.hour },
        },
      });

      return fish;
    },
    getBugsByPmHourMonthNorth: async (parent, args, context) => {
      const bug = await context.prisma.bug.findMany({
        where: {
          monthsNorth: { has: args.month },
          hoursPM: { has: args.hour },
        },
      });

      return bug;
    },
    getBugsByPmHourMonthSouth: async (parent, args, context) => {
      const bug = await context.prisma.bug.findMany({
        where: {
          monthsSouth: { has: args.month },
          hoursPM: { has: args.hour },
        },
      });

      return bug;
    },
    getFishByPmHourMonthNorth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: {
          monthsNorth: { has: args.month },
          hoursPM: { has: args.hour },
        },
      });

      return fish;
    },
    getFishByPmHourMonthSouth: async (parent, args, context) => {
      const fish = await context.prisma.bug.findMany({
        where: {
          monthsSouth: { has: args.month },
          hoursPM: { has: args.hour },
        },
      });

      return fish;
    },
    getBugsByTimeRangeMonthNorth: async (parent, args, context) => {
      const bugs = await context.prisma.bug.findMany({
        where: {
          time_range: args.time_range,
          monthsNorth: { has: args.month },
        },
      });

      return bugs;
    },
    getFishByTimeRangeMonthNorth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: {
          time_range: args.time_range,
          monthsNorth: { has: args.hour },
        },
      });

      return fish;
    },
    getBugsByTimeRangeMonthSouth: async (parent, args, context) => {
      const bugs = await context.prisma.bug.findMany({
        where: {
          time_range: args.time_range,
          monthsSouth: { has: args.month },
        },
      });

      return bugs;
    },
    getFishByTimeRangeMonthSouth: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: {
          time_range: args.time_range,
          monthsSouth: { has: args.month },
        },
      });

      return fish;
    },
    getBugsByLocation: async (parent, args, context) => {
      const bugs = await context.prisma.bug.findMany({
        where: { location: args.location },
      });

      return bugs;
    },
    getFishByLocation: async (parent, args, context) => {
      const fish = await context.prisma.fish.findMany({
        where: { location: args.location },
      });

      return fish;
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

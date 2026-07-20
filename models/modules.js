const { PrismaClient, Prisma } = require("@prisma/client");
const prisma = new PrismaClient();

module.exports.create = function create(code, name, credit) {
    return prisma.module.create({
        //TODO: Add data
    }).then(function (module) {
        //TODO: Return module
    }).catch(function (error) {
        // Prisma error codes: https://www.prisma.io/docs/orm/reference/error-reference#p2002
        // TODO: Handle Prisma Error, throw a new error if module already exists
    });
};
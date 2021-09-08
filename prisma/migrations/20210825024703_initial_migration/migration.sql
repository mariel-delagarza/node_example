-- CreateEnum
CREATE TYPE "Month" AS ENUM ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

-- CreateTable
CREATE TABLE "Bug" (
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "time" TEXT NOT NULL,
    "monthsNorth" "Month"[],
    "monthsSouth" "Month"[],

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Bug.id_unique" ON "Bug"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Bug.name_unique" ON "Bug"("name");

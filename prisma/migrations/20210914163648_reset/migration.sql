-- CreateEnum
CREATE TYPE "MonthEnum" AS ENUM ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

-- CreateTable
CREATE TABLE "Bug" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "value_id" TEXT NOT NULL,
    "location_id" TEXT NOT NULL,
    "time_of_day_id" TEXT NOT NULL,
    "monthsNorth" "MonthEnum"[],
    "monthsSouth" "MonthEnum"[],

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Fish" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "notes" TEXT NOT NULL,
    "shadowSize_id" TEXT NOT NULL,
    "value_id" TEXT NOT NULL,
    "location_id" TEXT NOT NULL,
    "time_of_day_id" TEXT NOT NULL,
    "monthsNorth" "MonthEnum"[],
    "monthsSouth" "MonthEnum"[],

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ShadowSize" (
    "shadowSize_id" TEXT NOT NULL,
    "shadowsize" TEXT NOT NULL,

    PRIMARY KEY ("shadowSize_id")
);

-- CreateTable
CREATE TABLE "Value" (
    "value_id" TEXT NOT NULL,
    "value" INTEGER NOT NULL,

    PRIMARY KEY ("value_id")
);

-- CreateTable
CREATE TABLE "Location" (
    "location_id" TEXT NOT NULL,
    "location" TEXT NOT NULL,

    PRIMARY KEY ("location_id")
);

-- CreateTable
CREATE TABLE "Time_of_Day" (
    "time_of_day_id" TEXT NOT NULL,
    "time_of_day" TEXT NOT NULL,

    PRIMARY KEY ("time_of_day_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Bug.name_unique" ON "Bug"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Fish.name_unique" ON "Fish"("name");

-- AddForeignKey
ALTER TABLE "Bug" ADD FOREIGN KEY ("value_id") REFERENCES "Value"("value_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bug" ADD FOREIGN KEY ("location_id") REFERENCES "Location"("location_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bug" ADD FOREIGN KEY ("time_of_day_id") REFERENCES "Time_of_Day"("time_of_day_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Fish" ADD FOREIGN KEY ("shadowSize_id") REFERENCES "ShadowSize"("shadowSize_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Fish" ADD FOREIGN KEY ("value_id") REFERENCES "Value"("value_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Fish" ADD FOREIGN KEY ("location_id") REFERENCES "Location"("location_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Fish" ADD FOREIGN KEY ("time_of_day_id") REFERENCES "Time_of_Day"("time_of_day_id") ON DELETE CASCADE ON UPDATE CASCADE;

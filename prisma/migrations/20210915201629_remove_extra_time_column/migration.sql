/*
  Warnings:

  - You are about to drop the column `time_of_day_north` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `time_of_day_south` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `time_of_day_north` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `time_of_day_south` on the `Fish` table. All the data in the column will be lost.
  - Added the required column `time_of_day` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_of_day` to the `Fish` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "time_of_day_north",
DROP COLUMN "time_of_day_south",
ADD COLUMN     "time_of_day" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "time_of_day_north",
DROP COLUMN "time_of_day_south",
ADD COLUMN     "time_of_day" TEXT NOT NULL;

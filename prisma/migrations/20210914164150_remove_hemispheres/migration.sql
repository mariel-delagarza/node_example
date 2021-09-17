/*
  Warnings:

  - You are about to drop the column `time_of_day_id` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `time_of_day_id` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the `Time_of_Day` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `time_of_day_north` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_of_day_south` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_of_day_north` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_of_day_south` to the `Fish` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Bug" DROP CONSTRAINT "Bug_time_of_day_id_fkey";

-- DropForeignKey
ALTER TABLE "Fish" DROP CONSTRAINT "Fish_time_of_day_id_fkey";

-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "time_of_day_id",
ADD COLUMN     "time_of_day_north" TEXT NOT NULL,
ADD COLUMN     "time_of_day_south" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "time_of_day_id",
ADD COLUMN     "time_of_day_north" TEXT NOT NULL,
ADD COLUMN     "time_of_day_south" TEXT NOT NULL;

-- DropTable
DROP TABLE "Time_of_Day";

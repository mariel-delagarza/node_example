/*
  Warnings:

  - You are about to drop the column `time_of_day` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `time_of_day` on the `Fish` table. All the data in the column will be lost.
  - Added the required column `eight_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eight_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eleven_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eleven_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `five_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `five_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `four_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `four_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nine_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nine_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `one_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `one_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seven_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seven_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `six_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `six_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ten_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ten_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `three_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `three_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_range` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `twelve_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `twelve_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `two_am` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `two_pm` to the `Bug` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eight_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eight_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eleven_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `eleven_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `five_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `five_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `four_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `four_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nine_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nine_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `one_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `one_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seven_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seven_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `six_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `six_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ten_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ten_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `three_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `three_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `time_range` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `twelve_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `twelve_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `two_am` to the `Fish` table without a default value. This is not possible if the table is not empty.
  - Added the required column `two_pm` to the `Fish` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "time_of_day",
ADD COLUMN     "eight_am" BOOLEAN NOT NULL,
ADD COLUMN     "eight_pm" BOOLEAN NOT NULL,
ADD COLUMN     "eleven_am" BOOLEAN NOT NULL,
ADD COLUMN     "eleven_pm" BOOLEAN NOT NULL,
ADD COLUMN     "five_am" BOOLEAN NOT NULL,
ADD COLUMN     "five_pm" BOOLEAN NOT NULL,
ADD COLUMN     "four_am" BOOLEAN NOT NULL,
ADD COLUMN     "four_pm" BOOLEAN NOT NULL,
ADD COLUMN     "nine_am" BOOLEAN NOT NULL,
ADD COLUMN     "nine_pm" BOOLEAN NOT NULL,
ADD COLUMN     "one_am" BOOLEAN NOT NULL,
ADD COLUMN     "one_pm" BOOLEAN NOT NULL,
ADD COLUMN     "seven_am" BOOLEAN NOT NULL,
ADD COLUMN     "seven_pm" BOOLEAN NOT NULL,
ADD COLUMN     "six_am" BOOLEAN NOT NULL,
ADD COLUMN     "six_pm" BOOLEAN NOT NULL,
ADD COLUMN     "ten_am" BOOLEAN NOT NULL,
ADD COLUMN     "ten_pm" BOOLEAN NOT NULL,
ADD COLUMN     "three_am" BOOLEAN NOT NULL,
ADD COLUMN     "three_pm" BOOLEAN NOT NULL,
ADD COLUMN     "time_range" TEXT NOT NULL,
ADD COLUMN     "twelve_am" BOOLEAN NOT NULL,
ADD COLUMN     "twelve_pm" BOOLEAN NOT NULL,
ADD COLUMN     "two_am" BOOLEAN NOT NULL,
ADD COLUMN     "two_pm" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "time_of_day",
ADD COLUMN     "eight_am" BOOLEAN NOT NULL,
ADD COLUMN     "eight_pm" BOOLEAN NOT NULL,
ADD COLUMN     "eleven_am" BOOLEAN NOT NULL,
ADD COLUMN     "eleven_pm" BOOLEAN NOT NULL,
ADD COLUMN     "five_am" BOOLEAN NOT NULL,
ADD COLUMN     "five_pm" BOOLEAN NOT NULL,
ADD COLUMN     "four_am" BOOLEAN NOT NULL,
ADD COLUMN     "four_pm" BOOLEAN NOT NULL,
ADD COLUMN     "nine_am" BOOLEAN NOT NULL,
ADD COLUMN     "nine_pm" BOOLEAN NOT NULL,
ADD COLUMN     "one_am" BOOLEAN NOT NULL,
ADD COLUMN     "one_pm" BOOLEAN NOT NULL,
ADD COLUMN     "seven_am" BOOLEAN NOT NULL,
ADD COLUMN     "seven_pm" BOOLEAN NOT NULL,
ADD COLUMN     "six_am" BOOLEAN NOT NULL,
ADD COLUMN     "six_pm" BOOLEAN NOT NULL,
ADD COLUMN     "ten_am" BOOLEAN NOT NULL,
ADD COLUMN     "ten_pm" BOOLEAN NOT NULL,
ADD COLUMN     "three_am" BOOLEAN NOT NULL,
ADD COLUMN     "three_pm" BOOLEAN NOT NULL,
ADD COLUMN     "time_range" TEXT NOT NULL,
ADD COLUMN     "twelve_am" BOOLEAN NOT NULL,
ADD COLUMN     "twelve_pm" BOOLEAN NOT NULL,
ADD COLUMN     "two_am" BOOLEAN NOT NULL,
ADD COLUMN     "two_pm" BOOLEAN NOT NULL;

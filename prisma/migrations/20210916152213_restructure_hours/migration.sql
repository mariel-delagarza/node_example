/*
  Warnings:

  - You are about to drop the column `eight_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `eight_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `eleven_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `eleven_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `five_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `five_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `four_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `four_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `nine_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `nine_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `one_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `one_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `seven_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `seven_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `six_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `six_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `ten_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `ten_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `three_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `three_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `twelve_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `twelve_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `two_am` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `two_pm` on the `Bug` table. All the data in the column will be lost.
  - You are about to drop the column `eight_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `eight_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `eleven_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `eleven_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `five_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `five_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `four_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `four_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `nine_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `nine_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `one_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `one_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `seven_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `seven_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `six_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `six_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `ten_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `ten_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `three_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `three_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `twelve_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `twelve_pm` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `two_am` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `two_pm` on the `Fish` table. All the data in the column will be lost.

*/
-- CreateEnum
CREATE TYPE "HoursEnum" AS ENUM ('One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve');

-- AlterTable
ALTER TABLE "Bug" DROP COLUMN "eight_am",
DROP COLUMN "eight_pm",
DROP COLUMN "eleven_am",
DROP COLUMN "eleven_pm",
DROP COLUMN "five_am",
DROP COLUMN "five_pm",
DROP COLUMN "four_am",
DROP COLUMN "four_pm",
DROP COLUMN "nine_am",
DROP COLUMN "nine_pm",
DROP COLUMN "one_am",
DROP COLUMN "one_pm",
DROP COLUMN "seven_am",
DROP COLUMN "seven_pm",
DROP COLUMN "six_am",
DROP COLUMN "six_pm",
DROP COLUMN "ten_am",
DROP COLUMN "ten_pm",
DROP COLUMN "three_am",
DROP COLUMN "three_pm",
DROP COLUMN "twelve_am",
DROP COLUMN "twelve_pm",
DROP COLUMN "two_am",
DROP COLUMN "two_pm",
ADD COLUMN     "hoursAM" "HoursEnum"[],
ADD COLUMN     "hoursPM" "HoursEnum"[];

-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "eight_am",
DROP COLUMN "eight_pm",
DROP COLUMN "eleven_am",
DROP COLUMN "eleven_pm",
DROP COLUMN "five_am",
DROP COLUMN "five_pm",
DROP COLUMN "four_am",
DROP COLUMN "four_pm",
DROP COLUMN "nine_am",
DROP COLUMN "nine_pm",
DROP COLUMN "one_am",
DROP COLUMN "one_pm",
DROP COLUMN "seven_am",
DROP COLUMN "seven_pm",
DROP COLUMN "six_am",
DROP COLUMN "six_pm",
DROP COLUMN "ten_am",
DROP COLUMN "ten_pm",
DROP COLUMN "three_am",
DROP COLUMN "three_pm",
DROP COLUMN "twelve_am",
DROP COLUMN "twelve_pm",
DROP COLUMN "two_am",
DROP COLUMN "two_pm",
ADD COLUMN     "hoursAM" "HoursEnum"[],
ADD COLUMN     "hoursPM" "HoursEnum"[];
